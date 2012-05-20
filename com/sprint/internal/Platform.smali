.class public Lcom/sprint/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static LOG:Ljava/lang/String;

.field static mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;


# instance fields
.field private myctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 37
    const-string v0, "SprintPlatform"

    sput-object v0, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/sprint/internal/Platform;->myctx:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static getCdmaPrlVersion()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "You cannot get the Service for Platform"

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, prl:Ljava/lang/String;
    sget-object v2, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    const-string v3, "getCdmaPrlVersion()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v2, "isprintextension"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v2

    sput-object v2, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 140
    :try_start_16
    sget-object v2, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v2, :cond_3d

    .line 141
    sget-object v2, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v2}, Lcom/samsungframeworks/internal/ISprintExtension;->getCdmaPrlVersion()Ljava/lang/String;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_1f} :catch_6e

    move-result-object v1

    .line 154
    sget-object v2, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 143
    :cond_3d
    :try_start_3d
    sget-object v2, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    const-string v3, "You cannot get the Service for Platform"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "You cannot get the Service for Platform"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4c} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_4c} :catch_6e

    .line 146
    :catch_4c
    move-exception v2

    move-object v0, v2

    .line 147
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v2, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You cannot get the Service for Platform"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "You cannot get the Service for Platform"

    invoke-direct {v2, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_6e
    move-exception v2

    move-object v0, v2

    .line 150
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v2, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You cannot get the Service for Platform"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "You don\'t have a right permission"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public disableScreenTimeout()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v4, "You cannot get the Service for Platform"

    .line 48
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    const-string v2, "disableScreenTiemout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 53
    :try_start_15
    sget-object v1, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1f

    .line 55
    sget-object v1, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->disableScreenTimeout()V

    .line 73
    return-void

    .line 59
    :cond_1f
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for Platform"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You cannot get the Service for Platform"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2e} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_2e} :catch_50

    .line 63
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for Platform"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You cannot get the Service for Platform"

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_50
    move-exception v1

    move-object v0, v1

    .line 70
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for Platform"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You don\'t have a right permission"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableScreenTimeout()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v4, "You cannot get the Service for Platform"

    .line 77
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    const-string v2, "enableScreenTiemout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 82
    :try_start_15
    sget-object v1, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1f

    .line 84
    sget-object v1, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->enableScreenTimeout()V

    .line 102
    return-void

    .line 88
    :cond_1f
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for Platform"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You cannot get the Service for Platform"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2e} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_2e} :catch_50

    .line 92
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 94
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for Platform"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You cannot get the Service for Platform"

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_50
    move-exception v1

    move-object v0, v1

    .line 99
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for Platform"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You don\'t have a right permission"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reboot()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v4, "You cannot get the Service for Platform"

    .line 106
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    const-string/jumbo v2, "reboot()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 111
    :try_start_16
    sget-object v1, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_20

    .line 113
    sget-object v1, Lcom/sprint/internal/Platform;->mPlatform:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->reboot()V

    .line 131
    return-void

    .line 117
    :cond_20
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for Platform"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You cannot get the Service for Platform"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2f} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_2f} :catch_51

    .line 121
    :catch_2f
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for Platform"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You cannot get the Service for Platform"

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_51
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/Platform;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for Platform"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You don\'t have a right permission"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
