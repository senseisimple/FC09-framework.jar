.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$State;
    }
.end annotation


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected isGeneric:Z

.field public state:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    .line 59
    const-string v0, "Call"

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;
    .registers 7

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 278
    .local v3, l:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 279
    const/4 v5, 0x0

    .line 290
    :goto_b
    return-object v5

    .line 282
    :cond_c
    const/4 v1, 0x0

    .line 283
    .local v1, cwActive:Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_12
    if-ge v2, v4, :cond_24

    .line 284
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 285
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isCdmaCwActive()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 286
    move-object v1, v0

    .line 283
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_24
    move-object v5, v1

    .line 290
    goto :goto_b
.end method

.method public getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;
    .registers 7

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 298
    .local v3, l:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 299
    const/4 v5, 0x0

    .line 310
    :goto_b
    return-object v5

    .line 302
    :cond_c
    const/4 v1, 0x0

    .line 303
    .local v1, cwHolding:Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_12
    if-ge v2, v4, :cond_24

    .line 304
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 305
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isCdmaCwHolding()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 306
    move-object v1, v0

    .line 303
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_24
    move-object v5, v1

    .line 310
    goto :goto_b
.end method

.method public abstract getConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public getEarliestConnectTime()J
    .registers 11

    .prologue
    .line 172
    const-wide v6, 0x7fffffffffffffffL

    .line 173
    .local v6, time:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 175
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_12

    .line 176
    const-wide/16 v8, 0x0

    .line 188
    :goto_11
    return-wide v8

    .line 179
    :cond_12
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_17
    if-ge v1, v3, :cond_2b

    .line 180
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 183
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    .line 185
    .local v4, t:J
    cmp-long v8, v4, v6

    if-gez v8, :cond_28

    move-wide v6, v4

    .line 179
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #t:J
    :cond_2b
    move-wide v8, v6

    .line 188
    goto :goto_11
.end method

.method public getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .registers 11

    .prologue
    .line 122
    const-wide v7, 0x7fffffffffffffffL

    .line 124
    .local v7, time:J
    const/4 v1, 0x0

    .line 126
    .local v1, earliest:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, l:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_12

    .line 129
    const/4 v9, 0x0

    .line 144
    :goto_11
    return-object v9

    .line 132
    :cond_12
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_17
    if-ge v2, v4, :cond_2c

    .line 133
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 136
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 138
    .local v5, t:J
    cmp-long v9, v5, v7

    if-gez v9, :cond_29

    .line 139
    move-object v1, v0

    .line 140
    move-wide v7, v5

    .line 132
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #t:J
    :cond_2c
    move-object v9, v1

    .line 144
    goto :goto_11
.end method

.method public getEarliestCreateTime()J
    .registers 11

    .prologue
    .line 150
    const-wide v6, 0x7fffffffffffffffL

    .line 152
    .local v6, time:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_12

    .line 155
    const-wide/16 v8, 0x0

    .line 167
    :goto_11
    return-wide v8

    .line 158
    :cond_12
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_17
    if-ge v1, v3, :cond_2b

    .line 159
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 162
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    .line 164
    .local v4, t:J
    cmp-long v8, v4, v6

    if-gez v8, :cond_28

    move-wide v6, v4

    .line 158
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #t:J
    :cond_2b
    move-wide v8, v6

    .line 167
    goto :goto_11
.end method

.method public getLatestConnection()Lcom/android/internal/telephony/Connection;
    .registers 11

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_c

    .line 230
    const/4 v9, 0x0

    .line 245
    :goto_b
    return-object v9

    .line 233
    :cond_c
    const-wide/16 v7, 0x0

    .line 234
    .local v7, time:J
    const/4 v3, 0x0

    .line 235
    .local v3, latest:Lcom/android/internal/telephony/Connection;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_14
    if-ge v1, v4, :cond_29

    .line 236
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 237
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 239
    .local v5, t:J
    cmp-long v9, v5, v7

    if-lez v9, :cond_26

    .line 240
    move-object v3, v0

    .line 241
    move-wide v7, v5

    .line 235
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #t:J
    :cond_29
    move-object v9, v3

    .line 245
    goto :goto_b
.end method

.method public abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hangupIfAlive()V
    .registers 5

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 269
    :try_start_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_d
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_a .. :try_end_d} :catch_e

    .line 274
    :cond_d
    :goto_d
    return-void

    .line 270
    :catch_e
    move-exception v0

    .line 271
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupIfActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasConnections()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, connections:Ljava/util/List;
    if-nez v0, :cond_9

    move v1, v2

    .line 94
    :goto_8
    return v1

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    move v1, v2

    goto :goto_8
.end method

.method public isDialingOrAlerting()Z
    .registers 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    return v0
.end method

.method public isFakeCall()Z
    .registers 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 214
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isFakeConnection()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 215
    const/4 v1, 0x1

    .line 218
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isGeneric()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    return v0
.end method

.method public isIdle()Z
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public abstract isVideoCall()Z
.end method

.method public setGeneric(Z)V
    .registers 2
    .parameter "generic"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    .line 261
    return-void
.end method
