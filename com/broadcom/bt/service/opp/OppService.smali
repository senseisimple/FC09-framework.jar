.class public Lcom/broadcom/bt/service/opp/OppService;
.super Lcom/broadcom/bt/service/opp/IOppService$Stub;
.source "OppService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppService"

.field private static final V:Z = true

.field private static mRefs:I


# instance fields
.field private isFinished:Z

.field private mObexServiceNativeData:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    .line 44
    invoke-static {}, Lcom/broadcom/bt/service/opp/OppService;->classInitNative()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z

    .line 63
    sget v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    .line 64
    const-string v0, "OppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupDataNative()V
.end method

.method private native closeOpcSessionNative()V
.end method

.method private native closeOpsSessionNative()V
.end method

.method private native enableOpcSessionNative()V
.end method

.method private native exchangeVcardNative(Ljava/lang/String;)V
.end method

.method private native grantAccessNative(IILjava/lang/String;)V
.end method

.method private native initializeDataNative()V
.end method

.method private native pullVcardNative(Ljava/lang/String;)V
.end method

.method private native pushObjectNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setExchangeFolderNative(Ljava/lang/String;)V
.end method

.method private native setOwnerVcardNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized closeOpcSession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 137
    monitor-enter p0

    :try_start_3
    const-string v1, "OppService"

    const-string v2, "closeOpcSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->closeOpcSessionNative()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_f

    .line 143
    :goto_d
    monitor-exit p0

    return-void

    .line 140
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 141
    .local v0, t:Ljava/lang/Throwable;
    :try_start_11
    const-string v1, "OppService"

    const-string v2, "Error closing opc session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_d

    .line 137
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized closeOpsSession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 151
    monitor-enter p0

    :try_start_3
    const-string v1, "OppService"

    const-string v2, "closeOpsSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->closeOpsSessionNative()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_f

    .line 157
    :goto_d
    monitor-exit p0

    return-void

    .line 154
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, t:Ljava/lang/Throwable;
    :try_start_11
    const-string v1, "OppService"

    const-string v2, "Error closing ops session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_d

    .line 151
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableOpcSession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 123
    monitor-enter p0

    :try_start_3
    const-string v1, "OppService"

    const-string v2, "enableOpcSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->enableOpcSessionNative()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_f

    .line 129
    :goto_d
    monitor-exit p0

    return-void

    .line 126
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, t:Ljava/lang/Throwable;
    :try_start_11
    const-string v1, "OppService"

    const-string v2, "Error enabling opc session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_d

    .line 123
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized exchangeVcard(Ljava/lang/String;)V
    .registers 5
    .parameter "peerBDAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 199
    monitor-enter p0

    :try_start_3
    const-string v1, "OppService"

    const-string v2, "exchangeVcard()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->exchangeVcardNative(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_f

    .line 205
    :goto_d
    monitor-exit p0

    return-void

    .line 202
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 203
    .local v0, t:Ljava/lang/Throwable;
    :try_start_11
    const-string v1, "OppService"

    const-string v2, "Error exchanging vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_d

    .line 199
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/OppService;->finish()V

    .line 94
    sget v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    .line 95
    const-string v0, "OppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalize: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->finalize()V

    .line 98
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_b

    .line 81
    :try_start_5
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->cleanupDataNative()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_d

    .line 85
    :goto_8
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    .line 88
    :cond_b
    monitor-exit p0

    return-void

    .line 82
    :catch_d
    move-exception v0

    .line 83
    .local v0, t:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "OppService"

    const-string v2, "Error cleaning up"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_8

    .line 79
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized grantAccess(IILjava/lang/String;)V
    .registers 8
    .parameter "operation"
    .parameter "access"
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 216
    monitor-enter p0

    :try_start_3
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grantAccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/opp/OppService;->grantAccessNative(IILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_3a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2e} :catch_30

    .line 222
    :goto_2e
    monitor-exit p0

    return-void

    .line 219
    :catch_30
    move-exception v1

    move-object v0, v1

    .line 220
    .local v0, t:Ljava/lang/Throwable;
    :try_start_32
    const-string v1, "OppService"

    const-string v2, "Error granting access"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3a

    goto :goto_2e

    .line 216
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public init()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->initializeDataNative()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z

    .line 73
    return-void
.end method

.method public declared-synchronized pullVcard(Ljava/lang/String;)V
    .registers 5
    .parameter "peerBDAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 184
    monitor-enter p0

    :try_start_3
    const-string v1, "OppService"

    const-string/jumbo v2, "pullVcard()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->pullVcardNative(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_10

    .line 190
    :goto_e
    monitor-exit p0

    return-void

    .line 187
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 188
    .local v0, t:Ljava/lang/Throwable;
    :try_start_12
    const-string v1, "OppService"

    const-string v2, "Error pulling vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_e

    .line 184
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pushObject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "peerBDAddress"
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 168
    monitor-enter p0

    :try_start_3
    const-string v1, "OppService"

    const-string/jumbo v2, "pushObject()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/opp/OppService;->pushObjectNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_10

    .line 174
    :goto_e
    monitor-exit p0

    return-void

    .line 171
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, t:Ljava/lang/Throwable;
    :try_start_12
    const-string v1, "OppService"

    const-string v2, "Error pusing object"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_e

    .line 168
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    const-string v1, "bluetooth_opp_service"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/opp/OppEventLoop;

    .line 106
    .local v0, eventLoop:Lcom/broadcom/bt/service/opp/OppEventLoop;
    if-eqz v0, :cond_d

    .line 107
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 109
    :cond_d
    return-void
.end method

.method public declared-synchronized setExchangeFolder(Ljava/lang/String;)V
    .registers 5
    .parameter "pathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    const-string v1, "OppService"

    const-string/jumbo v2, "setExchangeFolder()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->setExchangeFolderNative(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    .line 253
    :goto_c
    monitor-exit p0

    return-void

    .line 250
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 251
    .local v0, e:Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_c

    .line 247
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setOwnerVcard(Ljava/lang/String;)V
    .registers 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 232
    monitor-enter p0

    :try_start_3
    const-string v1, "OppService"

    const-string/jumbo v2, "setOwnerVcard()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->setOwnerVcardNative(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_10

    .line 238
    :goto_e
    monitor-exit p0

    return-void

    .line 235
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 236
    .local v0, t:Ljava/lang/Throwable;
    :try_start_12
    const-string v1, "OppService"

    const-string v2, "Error setting owner vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_e

    .line 232
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    const-string v1, "bluetooth_opp_service"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/opp/OppEventLoop;

    .line 114
    .local v0, eventLoop:Lcom/broadcom/bt/service/opp/OppEventLoop;
    if-eqz v0, :cond_d

    .line 115
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 117
    :cond_d
    return-void
.end method
