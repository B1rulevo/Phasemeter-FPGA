/******************************************************************************
 * dma.h
 *
 * Задача: Реализация AXI DMA S2MM (PL->DDR) с прерываниями (Standalone BSP).
 * Предоставляет функции:
 *   - dma_init()         - инициализация DMA и контроллера прерываний
 *   - dma_start(buf,len) - запуск передачи (инактивирование кеша, SimpleTransfer)
 *   - dma_wait()         - ожидание завершения (polling или флаг)
 *   - dma_irq_handler()  - обработчик прерывания DMA (S2MM)
 *   - dma_clear_flags()  - сброс внутренних флагов завершения/ошибки
 *   - dma_is_done()      - проверка флага «done»
 *   - dma_has_error()    - проверка флага «error»
 *   - dma_is_busy()      - проверка занятости DMA
 *   - dma_reset()        - программный сброс DMA
 *
 * Используются драйверы XAXIDMA и XSCUGIC. В коде предполагается настройка
 * устройств через XPAR_... макросы из xparameters.h.
 *****************************************************************************/

#ifndef DMA_H
#define DMA_H

#include <stdint.h>

#define DMA_INSTANCE 0

#define DMA_BUFFER_ADDR  ((uint32_t *)0x02100000)

#define BASE_CAPTURE_LENGTH 500000  // число 32-битных слов

typedef enum {
    DMA_IDLE = 0,
    DMA_BUSY,
    DMA_DONE,
    DMA_ERROR
} dma_state_t;

/* Инициализировать DMA и прерывания (XScuGic) */
int dma_init(void);
void dma_irq_reconnect(void);

/* Запустить передачу: buffer — адрес буфера (word32), length_words — длина в словах */
int dma_start();

/* Ожидание завершения передачи (polling) */
int dma_wait(void);

/* Обработчик прерывания AXI DMA (должен быть зарегистрирован в GIC) */
void dma_irq_handler(void *Callback);

/* Сбросить флаги (вызвать перед началом новой передачи) */
void dma_clear_flags(void);

/* Проверка состояния DMA */
int dma_get_state(void);

/* Программный сброс DMA */
int dma_reset(void);

void dma_test(void);

void dma_handle_data(void);

#endif /* DMA_H */