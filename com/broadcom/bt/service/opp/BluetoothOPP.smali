.class public Lcom/broadcom/bt/service/opp/BluetoothOPP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/BluetoothOPP$1;,
        Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;,
        Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_opp_service"

.field private static final TAG:Ljava/lang/String; = "BluetoothOPP"

.field private static mRefs:I


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

.field private mService:Lcom/broadcom/bt/service/opp/IOppService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 100
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 101
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/opp/IOppService;)V
    .registers 5
    .parameter "service"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 133
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 134
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilterAll(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 202
    invoke-static {p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOpc(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 203
    .local v0, f:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOps(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 204
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 205
    return-object v0
.end method

.method public static createFilterOpc(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 243
    if-nez p0, :cond_7

    .line 244
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .restart local p0
    :cond_7
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_OPEN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_ENABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_OBJECT_PUSHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v0, "com.broadcom.bt.app.opp.action.ACTION_ON_OPC_OBJECT_PUSHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    return-object p0
.end method

.method public static createFilterOps(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 225
    if-nez p0, :cond_7

    .line 226
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .restart local p0
    :cond_7
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_OBJECT_RECEIVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    return-object p0
.end method

.method public static createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 209
    if-nez p0, :cond_7

    .line 210
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .restart local p0
    :cond_7
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OP_OWNER_VCARD_NOT_SET"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    return-object p0
.end method

.method private getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .parameter "is"

    .prologue
    .line 643
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 644
    .local v1, r:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 647
    .local v2, s:Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_1f

    goto :goto_10

    .line 651
    :catch_1f
    move-exception v3

    .line 655
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 653
    :catchall_25
    move-exception v3

    throw v3
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 88
    const-string v1, "bluetooth_opp_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 89
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    .line 93
    :goto_10
    return v1

    .line 92
    :cond_11
    new-instance v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;-><init>()V

    .line 93
    .local v0, p:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.OppService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method


# virtual methods
.method public closeOpcSession()V
    .registers 3

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpcSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 312
    :goto_5
    return-void

    .line 309
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public closeOpsSession()V
    .registers 3

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpsSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 327
    :goto_5
    return-void

    .line 324
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public deleteMergedVcards(Ljava/lang/String;)Z
    .registers 15
    .parameter "filePathPrefix"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 546
    const/4 v8, 0x0

    .line 548
    .local v8, success:Z
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, fPrefix:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 551
    .local v4, parentDir:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 552
    .local v6, rmCmd:Ljava/lang/String;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "sh"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "-c"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    aput-object v6, v7, v9

    .line 554
    .local v7, rmCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_60

    move-result-object v3

    .line 555
    .local v3, p:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 557
    .local v2, is:Ljava/io/InputStream;
    :try_start_3b
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 559
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, result:Ljava/lang/String;
    const-string v9, "BluetoothOPP"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    if-eqz v5, :cond_50

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_59
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4d} :catch_67

    move-result v9

    if-nez v9, :cond_57

    :cond_50
    move v9, v12

    .line 570
    :goto_51
    if-eqz v2, :cond_56

    .line 572
    :try_start_53
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_75

    .line 583
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :cond_56
    :goto_56
    return v9

    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v5       #result:Ljava/lang/String;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :cond_57
    move v9, v11

    .line 561
    goto :goto_51

    .line 570
    .end local v5           #result:Ljava/lang/String;
    :catchall_59
    move-exception v9

    if-eqz v2, :cond_5f

    .line 572
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_73

    .line 570
    :cond_5f
    :goto_5f
    :try_start_5f
    throw v9
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_60} :catch_60

    .line 580
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :catch_60
    move-exception v9

    move-object v0, v9

    .line 581
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :goto_65
    move v9, v8

    .line 583
    goto :goto_56

    .line 567
    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :catch_67
    move-exception v9

    .line 570
    if-eqz v2, :cond_6d

    .line 572
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_71

    .line 578
    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_60

    goto :goto_65

    .line 573
    :catch_71
    move-exception v9

    goto :goto_6d

    :catch_73
    move-exception v10

    goto :goto_5f

    .restart local v5       #result:Ljava/lang/String;
    :catch_75
    move-exception v10

    goto :goto_56
.end method

.method public enableOpcSession()V
    .registers 3

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->enableOpcSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 297
    :goto_5
    return-void

    .line 294
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public exchangeVcard(Ljava/lang/String;)V
    .registers 5
    .parameter "peerBDAddress"

    .prologue
    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->exchangeVcard(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 467
    :goto_5
    return-void

    .line 463
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 465
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string v2, "exchangeVcard()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 470
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 472
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 473
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalize: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 508
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    if-eqz v1, :cond_8

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 518
    :cond_8
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2c

    if-eqz v1, :cond_1a

    .line 520
    :try_start_10
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1a} :catch_22

    .line 526
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    :try_start_1b
    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    .line 528
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_2c

    .line 529
    monitor-exit p0

    return-void

    .line 522
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 523
    .local v0, t:Ljava/lang/Throwable;
    :try_start_24
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_1a

    .line 508
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public grantAccess(IILjava/lang/String;)V
    .registers 11
    .parameter "operation"
    .parameter "access"
    .parameter "filePathName"

    .prologue
    const-string v6, "grantAccess("

    const-string v5, "BluetoothOPP"

    const-string v4, ":"

    const-string v3, ")"

    .line 373
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantAccess("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :try_start_30
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/opp/IOppService;->grantAccess(IILjava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_35} :catch_36

    .line 381
    :goto_35
    return-void

    .line 377
    :catch_36
    move-exception v1

    move-object v0, v1

    .line 379
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantAccess("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 112
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    .line 113
    const/4 v1, 0x1

    .line 116
    :goto_7
    return v1

    .line 114
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public mergeVcards(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "filePathPrefix"
    .parameter "mergedVcardFilepath"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 605
    const/4 v8, 0x0

    .line 607
    .local v8, success:Z
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .local v3, fPrefix:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 609
    .local v6, parentDir:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cat "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, catCmd:Ljava/lang/String;
    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "sh"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "-c"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    aput-object v0, v1, v9

    .line 612
    .local v1, catCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_69

    move-result-object v5

    .line 613
    .local v5, p:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 615
    .local v4, is:Ljava/io/InputStream;
    :try_start_44
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 617
    invoke-direct {p0, v4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 618
    .local v7, result:Ljava/lang/String;
    const-string v9, "BluetoothOPP"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz v7, :cond_59

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_56} :catch_70

    move-result v9

    if-nez v9, :cond_60

    :cond_59
    move v9, v12

    .line 627
    :goto_5a
    if-eqz v4, :cond_5f

    .line 629
    :try_start_5c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_7e

    .line 639
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    .end local v7           #result:Ljava/lang/String;
    :cond_5f
    :goto_5f
    return v9

    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    .restart local v7       #result:Ljava/lang/String;
    :cond_60
    move v9, v11

    .line 619
    goto :goto_5a

    .line 627
    .end local v7           #result:Ljava/lang/String;
    :catchall_62
    move-exception v9

    if-eqz v4, :cond_68

    .line 629
    :try_start_65
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_7c

    .line 627
    :cond_68
    :goto_68
    :try_start_68
    throw v9
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_69} :catch_69

    .line 636
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    :catch_69
    move-exception v9

    move-object v2, v9

    .line 637
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2           #e:Ljava/lang/Exception;
    :goto_6e
    move v9, v8

    .line 639
    goto :goto_5f

    .line 624
    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    :catch_70
    move-exception v9

    .line 627
    if-eqz v4, :cond_76

    .line 629
    :try_start_73
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_7a

    .line 635
    :cond_76
    :goto_76
    :try_start_76
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_69

    goto :goto_6e

    .line 630
    :catch_7a
    move-exception v9

    goto :goto_76

    :catch_7c
    move-exception v10

    goto :goto_68

    .restart local v7       #result:Ljava/lang/String;
    :catch_7e
    move-exception v10

    goto :goto_5f
.end method

.method public pullVcard(Ljava/lang/String;)V
    .registers 5
    .parameter "peerBDAddress"

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->pullVcard(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 448
    :goto_5
    return-void

    .line 444
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 446
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string/jumbo v2, "pullVcard()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public pushObject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "peerBDAddress"
    .parameter "filePathName"

    .prologue
    .line 344
    const-string v1, "BluetoothOPP"

    const-string v2, "Call pushObject()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :try_start_7
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppService;->pushObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 351
    :goto_c
    return-void

    .line 348
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 349
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothOPP"

    const-string/jumbo v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 154
    monitor-exit p0

    return-void

    .line 151
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .registers 8
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 190
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    if-nez v1, :cond_16

    .line 191
    new-instance v1, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;-><init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;Lcom/broadcom/bt/service/opp/BluetoothOPP$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_22

    .line 193
    :try_start_f
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_22
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 199
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 194
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1a
    const-string v1, "BluetoothOPP"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_16

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;ZI)V
    .registers 7
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 163
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 166
    monitor-exit p0

    return-void

    .line 163
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .registers 2

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .registers 5
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 490
    if-eqz p2, :cond_9

    const/4 v0, 0x0

    :goto_3
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p1, v0, p3}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 491
    return-void

    .line 490
    .restart local p3
    :cond_9
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public setExchangeFolder(Ljava/lang/String;)V
    .registers 6
    .parameter "pathName"

    .prologue
    const-string/jumbo v3, "setExchangeFolder()"

    const-string v2, "BluetoothOPP"

    .line 419
    const-string v1, "BluetoothOPP"

    const-string/jumbo v1, "setExchangeFolder()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :try_start_d
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setExchangeFolder(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_13

    .line 428
    :goto_12
    return-void

    .line 424
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 426
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string/jumbo v1, "setExchangeFolder()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public setOwnerVcard(Ljava/lang/String;)V
    .registers 6
    .parameter "fileName"

    .prologue
    const-string/jumbo v3, "setOwnerVcard()"

    const-string v2, "BluetoothOPP"

    .line 396
    const-string v1, "BluetoothOPP"

    const-string/jumbo v1, "setOwnerVcard()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_d
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setOwnerVcard(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_13

    .line 405
    :goto_12
    return-void

    .line 401
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 403
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string/jumbo v1, "setOwnerVcard()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 4

    .prologue
    const-string v1, "BluetoothOPP"

    .line 266
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothOPP"

    const-string/jumbo v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    .line 277
    :try_start_e
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_21
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_17

    .line 283
    :goto_15
    monitor-exit p0

    return-void

    .line 278
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, t:Ljava/lang/Throwable;
    :try_start_19
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 266
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method
