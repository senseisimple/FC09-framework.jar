.class public Lcom/broadcom/bt/service/ftp/BluetoothFTPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothFTPService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFTPService"

.field private static final V:Z = true

.field private static isStateRunning:Z


# instance fields
.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;",
            ">;"
        }
    .end annotation
.end field

.field mMediaScanner:Landroid/media/MediaScannerConnection;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 63
    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->classInitNative()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$1;-><init>(Lcom/broadcom/bt/service/ftp/BluetoothFTPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 111
    new-instance v0, Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    .line 113
    return-void
.end method

.method private FtpGetFileIsDRM(Ljava/lang/String;)Z
    .registers 6
    .parameter "fileName"

    .prologue
    .line 373
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v1

    .line 375
    .local v1, mDrmManager:Landroid/drm/mobile2/OMADRMManager;
    :try_start_4
    invoke-virtual {v1, p1}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 376
    invoke-virtual {v1, p1}, Landroid/drm/mobile2/OMADRMManager;->isConvertedFL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 377
    const-string v2, "BluetoothFTPService"

    const-string/jumbo v3, "onFtpServerAccessRequested: DRM file so can not send."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_18} :catch_1a
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_4 .. :try_end_18} :catch_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_27

    .line 378
    const/4 v2, 0x1

    .line 388
    :goto_19
    return v2

    .line 381
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 382
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 388
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1f
    :goto_1f
    const/4 v2, 0x0

    goto :goto_19

    .line 383
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 384
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1f

    .line 385
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_27
    move-exception v2

    move-object v0, v2

    .line 386
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupFtpNativeDataNative()V
.end method

.method private native closeFtpServerNative()V
.end method

.method private native disableFtpServerNative()V
.end method

.method private native enableDefaultFtpServerNative()V
.end method

.method private native enableFtpServerNative(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
.end method

.method private native ftpServerAccessRspNative(BZLjava/lang/String;)V
.end method

.method private native ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native initFtpNativeDataNative()V
.end method

.method private static needAccessRequest()Z
    .registers 4

    .prologue
    .line 93
    :try_start_0
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "service.brcm.bt.secure_mode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 97
    :goto_10
    return v1

    .line 95
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTPService"

    const-string/jumbo v2, "needAccessRequest()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
    .registers 26
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "remoteDeviceName"
    .parameter "opCode"
    .parameter "remoteAddress"

    .prologue
    .line 395
    if-nez p4, :cond_4a

    .line 397
    :try_start_2
    new-instance v12, Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-direct {v12, v4}, Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;-><init>(Landroid/content/Context;)V

    .line 398
    .local v12, bluetoothFtpVisibility:Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;->CreateVisibleFileList(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_35

    .line 446
    .end local v12           #bluetoothFtpVisibility:Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;
    :cond_12
    :goto_12
    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->needAccessRequest()Z

    move-result v4

    if-eqz v4, :cond_146

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v4, 0x0

    const-string v5, "bluetooth_ftp"

    const/4 v9, -0x1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move/from16 v8, p4

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v4 .. v11}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v12, v4, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 454
    :goto_34
    return-void

    .line 399
    :catch_35
    move-exception v4

    move-object v13, v4

    .line 400
    .local v13, e:Ljava/lang/Exception;
    const-string v4, "BluetoothFTPService"

    const-string v5, "ftpServerAccessRspNative failed"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_12

    .line 403
    .end local v13           #e:Ljava/lang/Exception;
    :cond_4a
    const/4 v4, 0x3

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_5c

    const/4 v4, 0x4

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_5c

    const/4 v4, 0x6

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_68

    .line 404
    :cond_5c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_34

    .line 406
    :cond_68
    const/4 v4, 0x2

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_87

    .line 407
    invoke-direct/range {p0 .. p1}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->FtpGetFileIsDRM(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 408
    const-string v4, "BluetoothFTPService"

    const-string v5, "ftpServerAccessRspNative this is DRM file block it"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_34

    .line 414
    :cond_87
    const/4 v4, 0x1

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_12

    .line 419
    const-string v4, "BluetoothFTPService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFtpServerAccessRequested: put request fileName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fileSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v18, 0x0

    .line 422
    .local v18, path:Ljava/lang/String;
    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 423
    .local v17, index:I
    if-lez v17, :cond_e9

    .line 424
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 425
    const-string v4, "BluetoothFTPService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFtpServerAccessRequested: path:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_e9
    :try_start_e9
    new-instance v19, Landroid/os/StatFs;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 432
    .local v19, stat:Landroid/os/StatFs;
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v15, v4, v6

    .line 434
    .local v15, freeSpace:J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v4, v0

    cmp-long v4, v4, v15

    if-lez v4, :cond_12

    .line 435
    const-string v4, "BluetoothFTPService"

    const-string/jumbo v5, "onFtpServerAccessRequested - Not enough free space"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_119} :catch_11b

    goto/16 :goto_34

    .line 440
    .end local v15           #freeSpace:J
    .end local v19           #stat:Landroid/os/StatFs;
    :catch_11b
    move-exception v4

    move-object v14, v4

    .line 441
    .local v14, eee:Ljava/lang/Exception;
    const-string v4, "BluetoothFTPService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling statfs() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto/16 :goto_34

    .line 452
    .end local v14           #eee:Ljava/lang/Exception;
    .end local v17           #index:I
    .end local v18           #path:Ljava/lang/String;
    :cond_146
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto/16 :goto_34
.end method

.method private onFtpServerAuthen(Ljava/lang/String;BZ)V
    .registers 4
    .parameter "user_id"
    .parameter "userid_length"
    .parameter "userid_required"

    .prologue
    .line 369
    return-void
.end method

.method private onFtpServerClosed()V
    .registers 5

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 330
    const-string v1, "BluetoothFTPService"

    const-string/jumbo v1, "onFtpServerClosed() called."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 335
    :try_start_12
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_17} :catch_26

    .line 342
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 363
    return-void

    .line 336
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 337
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTPService"

    const-string v1, "Unable to disconnect from media scanner"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private onFtpServerDelCompleted(Ljava/lang/String;B)V
    .registers 8
    .parameter "filePath"
    .parameter "status"

    .prologue
    const-string v4, "BluetoothFTPService"

    .line 542
    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFtpServerDelCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-nez p2, :cond_35

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 548
    :try_start_2f
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_35} :catch_4e

    .line 555
    :cond_35
    :goto_35
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, i:Landroid/content/Intent;
    const-string v2, "FILEPATH"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 558
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 572
    return-void

    .line 549
    .end local v0           #i:Landroid/content/Intent;
    :catch_4e
    move-exception v2

    move-object v1, v2

    .line 550
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to invoke MediaScanner.scanFile()"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method private onFtpServerDisabled()V
    .registers 3

    .prologue
    .line 288
    const-string v0, "BluetoothFTPService"

    const-string/jumbo v1, "onFtpServerDisabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 290
    return-void
.end method

.method private onFtpServerEnabled()V
    .registers 3

    .prologue
    .line 283
    const-string v0, "BluetoothFTPService"

    const-string/jumbo v1, "onFtpServerEnabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 285
    return-void
.end method

.method private onFtpServerFileTransferInProgress(II)V
    .registers 7
    .parameter "fileSize"
    .parameter "bytesTransferred"

    .prologue
    .line 458
    const-string v1, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transferring file via FTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, i:Landroid/content/Intent;
    const-string v1, "TOTAL_BYTES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const-string v1, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method private onFtpServerGetCompleted(Ljava/lang/String;B)V
    .registers 7
    .parameter "filePath"
    .parameter "status"

    .prologue
    .line 518
    const-string v1, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFtpServerGetCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 525
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method private onFtpServerOpened(Ljava/lang/String;)V
    .registers 7
    .parameter "remoteAddress"

    .prologue
    const-string v4, "BluetoothFTPService"

    .line 293
    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFtpServerOpened: remoteAddress = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x1

    sput-boolean v2, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 296
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_31

    .line 298
    :try_start_2c
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_31} :catch_45

    .line 305
    :cond_31
    :goto_31
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, i:Landroid/content/Intent;
    const-string v2, "RMT_DEV_ADDR"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 327
    return-void

    .line 299
    .end local v0           #i:Landroid/content/Intent;
    :catch_45
    move-exception v2

    move-object v1, v2

    .line 300
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to connect to media scanner"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method private onFtpServerPutCompleted(Ljava/lang/String;B)V
    .registers 8
    .parameter "filePath"
    .parameter "status"

    .prologue
    const-string v4, "BluetoothFTPService"

    .line 484
    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFtpServerPutCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-nez p2, :cond_35

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 491
    :try_start_2f
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_35} :catch_4e

    .line 498
    :cond_35
    :goto_35
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, i:Landroid/content/Intent;
    const-string v2, "FILEPATH"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 501
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 514
    return-void

    .line 492
    .end local v0           #i:Landroid/content/Intent;
    :catch_4e
    move-exception v2

    move-object v1, v2

    .line 493
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to invoke MediaScanner.scanFile()"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method


# virtual methods
.method public declared-synchronized closeFtpServer()V
    .registers 5

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 207
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    move-result v2

    if-eqz v2, :cond_10

    .line 209
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_15

    .line 216
    :cond_10
    :goto_10
    :try_start_10
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServerNative()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_22

    .line 220
    :goto_13
    monitor-exit p0

    return-void

    .line 210
    :catch_15
    move-exception v2

    move-object v1, v2

    .line 211
    .local v1, t:Ljava/lang/Throwable;
    :try_start_17
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to disconnect from media scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_10

    .line 207
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 217
    :catch_22
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    :try_start_23
    const-string v2, "BluetoothFTPService"

    const-string v3, "closeFtpServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_1f

    goto :goto_13
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->finish()V

    .line 199
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 200
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_b

    .line 189
    :try_start_5
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->cleanupFtpNativeDataNative()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_d

    .line 193
    :goto_8
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    .line 195
    :cond_b
    monitor-exit p0

    return-void

    .line 190
    :catch_d
    move-exception v0

    .line 191
    .local v0, t:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "BluetoothFTPService"

    const-string v2, "Unable to cleanup ftp service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_8

    .line 187
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAccessRsp(BZLjava/lang/String;)V
    .registers 7
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 255
    :goto_4
    monitor-exit p0

    return-void

    .line 252
    :catch_6
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAccessRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 251
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 233
    :goto_4
    monitor-exit p0

    return-void

    .line 230
    :catch_6
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAuthRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 229
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    const-string v0, "bluetooth_ftp"

    return-object v0
.end method

.method public declared-synchronized init()V
    .registers 4

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "broadcom.android.bluetooth.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 136
    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->initFtpNativeDataNative()V

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 146
    monitor-exit p0

    return-void

    .line 129
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 258
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_b

    .line 259
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 261
    :cond_b
    return-void
.end method

.method public declared-synchronized start()V
    .registers 4

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableDefaultFtpServerNative()V

    .line 154
    const/4 v1, 0x1

    sput-boolean v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    .line 158
    :goto_7
    monitor-exit p0

    return-void

    .line 155
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 156
    .local v0, e:Ljava/lang/Exception;
    :try_start_b
    const-string v1, "BluetoothFTPService"

    const-string v2, "enableDefaultFtpServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_7

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .registers 5

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 166
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 167
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_22

    move-result v2

    if-eqz v2, :cond_13

    .line 169
    :try_start_e
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_22
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_18

    .line 177
    :cond_13
    :goto_13
    :try_start_13
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->disableFtpServerNative()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_25

    .line 181
    :goto_16
    monitor-exit p0

    return-void

    .line 170
    :catch_18
    move-exception v2

    move-object v1, v2

    .line 171
    .local v1, t:Ljava/lang/Throwable;
    :try_start_1a
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to disconnect from media scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_13

    .line 166
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2

    .line 178
    :catch_25
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    :try_start_26
    const-string v2, "BluetoothFTPService"

    const-string v3, "disableFtpServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_22

    goto :goto_16
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 264
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 267
    :cond_b
    return-void
.end method
