.class public final Landroid/util/EventLog$Event;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field private static final DATA_START:I = 0x18

.field private static final INT_TYPE:B = 0x0t

.field private static final KERNAL_NANOSECONDS_OFFSET:I = 0x18

.field private static final KERNAL_SECONDS_OFFSET:I = 0x14

.field private static final LENGTH_OFFSET:I = 0x0

.field private static final LIST_TYPE:B = 0x3t

.field private static final LONG_TYPE:B = 0x1t

.field private static final NANOSECONDS_OFFSET:I = 0x10

.field private static final PAYLOAD_START:I = 0x14

.field private static final PROCESS_OFFSET:I = 0x4

.field private static final SECONDS_OFFSET:I = 0xc

.field private static final STRING_TYPE:B = 0x2t

.field private static final TAG_OFFSET:I = 0x14

.field private static final THREAD_OFFSET:I = 0x8


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    .line 98
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 99
    return-void
.end method

.method private decodeObject()Ljava/lang/Object;
    .registers 10

    .prologue
    .line 139
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 140
    .local v5, type:B
    packed-switch v5, :pswitch_data_7e

    .line 166
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown entry type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :pswitch_22
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 163
    :goto_2c
    return-object v6

    .line 145
    :pswitch_2d
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_2c

    .line 149
    :pswitch_38
    :try_start_38
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 150
    .local v3, length:I
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 151
    .local v4, start:I
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v4, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_58} :catch_59

    goto :goto_2c

    .line 153
    .end local v3           #length:I
    .end local v4           #start:I
    :catch_59
    move-exception v6

    move-object v1, v6

    .line 154
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "EventLog"

    const-string v7, "UTF-8 is not supported"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const/4 v6, 0x0

    goto :goto_2c

    .line 159
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :pswitch_64
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 160
    .restart local v3       #length:I
    if-gez v3, :cond_6e

    add-int/lit16 v3, v3, 0x100

    .line 161
    :cond_6e
    new-array v0, v3, [Ljava/lang/Object;

    .line 162
    .local v0, array:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_71
    if-ge v2, v3, :cond_7c

    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_7c
    move-object v6, v0

    .line 163
    goto :goto_2c

    .line 140
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_2d
        :pswitch_38
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getData()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-string v1, "EventLog"

    .line 125
    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 126
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1c} :catch_1f
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_1c} :catch_3f

    move-result-object v1

    .line 133
    :goto_1d
    monitor-exit p0

    return-object v1

    .line 128
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_21
    const-string v1, "EventLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal entry payload: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 130
    goto :goto_1d

    .line 131
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3f
    move-exception v1

    move-object v0, v1

    .line 132
    .local v0, e:Ljava/nio/BufferUnderflowException;
    const-string v1, "EventLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated entry payload: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_21 .. :try_end_5d} :catchall_5f

    move-object v1, v4

    .line 133
    goto :goto_1d

    .line 125
    .end local v0           #e:Ljava/nio/BufferUnderflowException;
    :catchall_5f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getProcessId()I
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getThreadId()I
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTimeNanos()J
    .registers 5

    .prologue
    .line 113
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
