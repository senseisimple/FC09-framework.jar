.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .registers 3
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 225
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private connectToSupplicant()Z
    .registers 4

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 380
    .local v0, connectTries:I
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->connectToSupplicant()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 381
    const/4 v2, 0x1

    .line 389
    :goto_e
    return v2

    .line 383
    :cond_f
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1a

    .line 384
    const/4 v2, 0x5

    #calls: Landroid/net/wifi/WifiMonitor;->nap(I)V
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$400(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1

    .line 389
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_1a
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_e
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 397
    if-nez p1, :cond_3

    .line 407
    :cond_2
    :goto_2
    return-void

    .line 400
    :cond_3
    const-string v0, "STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 401
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStopped()V

    goto :goto_2

    .line 402
    :cond_15
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 403
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStarted()V

    goto :goto_2

    .line 404
    :cond_27
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverHung()V

    goto :goto_2
.end method

.method private handlePasswordKeyMayBeIncorrect()V
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyPasswordKeyMayBeIncorrect()V

    .line 394
    return-void
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .registers 20
    .parameter "dataString"

    .prologue
    .line 492
    const-string v15, " "

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, dataTokens:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 495
    .local v2, BSSID:Ljava/lang/String;
    const/4 v9, -0x1

    .line 496
    .local v9, networkId:I
    const/4 v10, -0x1

    .line 497
    .local v10, newState:I
    move-object v3, v4

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_f
    if-ge v6, v7, :cond_73

    aget-object v13, v3, v6

    .line 498
    .local v13, token:Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 499
    .local v8, nameValue:[Ljava/lang/String;
    array-length v15, v8

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_24

    .line 497
    :cond_21
    :goto_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 503
    :cond_24
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, "BSSID"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_33

    .line 504
    const/4 v15, 0x1

    aget-object v2, v8, v15

    .line 505
    goto :goto_21

    .line 510
    :cond_33
    const/4 v15, 0x1

    :try_start_34
    aget-object v15, v8, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_39} :catch_47

    move-result v14

    .line 516
    .local v14, value:I
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, "id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_65

    .line 517
    move v9, v14

    goto :goto_21

    .line 511
    .end local v14           #value:I
    :catch_47
    move-exception v15

    move-object v5, v15

    .line 512
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v15, "WifiMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "STATE-CHANGE non-integer parameter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 518
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v14       #value:I
    :cond_65
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string/jumbo v16, "state"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 519
    move v10, v14

    goto :goto_21

    .line 523
    .end local v8           #nameValue:[Ljava/lang/String;
    .end local v13           #token:Ljava/lang/String;
    .end local v14           #value:I
    :cond_73
    const/4 v15, -0x1

    if-ne v10, v15, :cond_77

    .line 536
    .end local v3           #arr$:[Ljava/lang/String;
    :goto_76
    return-void

    .line 525
    .restart local v3       #arr$:[Ljava/lang/String;
    :cond_77
    sget-object v11, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 526
    .local v11, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_7f
    if-ge v6, v7, :cond_8a

    aget-object v12, v3, v6

    .line 527
    .local v12, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v12}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v15

    if-ne v15, v10, :cond_b6

    .line 528
    move-object v11, v12

    .line 532
    .end local v12           #state:Landroid/net/wifi/SupplicantState;
    :cond_8a
    sget-object v15, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v11, v15, :cond_a9

    .line 533
    const-string v15, "WifiMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid supplicant state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    move-object v15, v0

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v15}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v15

    invoke-virtual {v15, v9, v2, v11}, Landroid/net/wifi/WifiStateTracker;->notifyStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_76

    .line 526
    .restart local v12       #state:Landroid/net/wifi/SupplicantState;
    :cond_b6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .registers 5
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 416
    sparse-switch p1, :sswitch_data_28

    .line 438
    :goto_3
    return-void

    .line 418
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_3

    .line 422
    :sswitch_c
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_3

    .line 426
    :sswitch_14
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyScanResultsAvailable()V

    goto :goto_3

    .line 431
    :sswitch_1e
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyShowApListDialog()V

    goto :goto_3

    .line 416
    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_4
        0x4 -> :sswitch_14
        0xd -> :sswitch_1e
    .end sparse-switch
.end method

.method handleWpsEvent(I)V
    .registers 7
    .parameter "event"

    .prologue
    const-string v4, ")"

    const-string v3, "WifiMonitor"

    .line 452
    const-string v1, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWpsEvent - event type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    packed-switch p1, :pswitch_data_84

    .line 475
    const-string v1, "WifiMonitor"

    const-string v1, "WPS undefined"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string/jumbo v0, "wps_not_defined"

    .line 477
    .local v0, wpsEvent:Ljava/lang/String;
    const-string v1, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWpsEvent -There is no this event type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_4d
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->notifyGetWpsEvent(Ljava/lang/String;)V

    .line 481
    return-void

    .line 455
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_57
    const-string v1, "WifiMonitor"

    const-string v1, "WPS_SUCCESS"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string/jumbo v0, "wps_success"

    .line 457
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_4d

    .line 460
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_62
    const-string v1, "WifiMonitor"

    const-string v1, "WPS_FAIL"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string/jumbo v0, "wps_fail"

    .line 462
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_4d

    .line 465
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_6d
    const-string v1, "WifiMonitor"

    const-string v1, "WPS_OVERLAP"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string/jumbo v0, "wps_overlap"

    .line 467
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_4d

    .line 470
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_78
    const-string v1, "WifiMonitor"

    const-string v1, "WPS_TIMEOUT"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string/jumbo v0, "wps_timeout"

    .line 472
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_4d

    .line 453
    nop

    :pswitch_data_84
    .packed-switch 0x8
        :pswitch_57
        :pswitch_62
        :pswitch_6d
        :pswitch_78
    .end packed-switch
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/16 v10, 0xa

    const/4 v8, -0x1

    const-string v9, "WifiMonitor"

    .line 230
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 233
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantConnection()V

    .line 241
    :cond_16
    :goto_16
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, eventStr:Ljava/lang/String;
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_51

    .line 250
    :goto_22
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    const-string v6, "WPS-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    .line 251
    const-string v6, "WPA:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string/jumbo v6, "pre-shared key may be incorrect"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_16

    .line 253
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handlePasswordKeyMayBeIncorrect()V

    goto :goto_16

    .line 235
    .end local v3           #eventStr:Ljava/lang/String;
    :cond_47
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    .line 374
    :goto_50
    return-void

    .line 248
    .restart local v3       #eventStr:Ljava/lang/String;
    :cond_51
    const-string v6, "WifiMonitor"

    const-string v6, "Event [ SCAN-RESULTS ]"

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 258
    :cond_59
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 259
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$100()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, eventName:Ljava/lang/String;
    :goto_69
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 266
    .local v5, nameEnd:I
    if-eq v5, v8, :cond_75

    .line 267
    invoke-virtual {v2, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 268
    :cond_75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8c

    .line 269
    const-string v6, "WifiMonitor"

    const-string v6, "Received wpa_supplicant event with empty event name"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 262
    .end local v2           #eventName:Ljava/lang/String;
    .end local v5           #nameEnd:I
    :cond_83
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$200()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #eventName:Ljava/lang/String;
    goto :goto_69

    .line 276
    .restart local v5       #nameEnd:I
    :cond_8c
    const-string v6, "CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 277
    const/4 v0, 0x1

    .line 307
    .local v0, event:I
    :goto_95
    move-object v1, v3

    .line 308
    .local v1, eventData:Ljava/lang/String;
    const/4 v6, 0x7

    if-eq v0, v6, :cond_9c

    const/4 v6, 0x5

    if-ne v0, v6, :cond_12a

    .line 309
    :cond_9c
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v1, v6, v7

    .line 331
    :cond_a5
    :goto_a5
    if-ne v0, v12, :cond_164

    .line 332
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 372
    :goto_aa
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #setter for: Landroid/net/wifi/WifiMonitor;->mRecvErrors:I
    invoke-static {v6, v11}, Landroid/net/wifi/WifiMonitor;->access$302(Landroid/net/wifi/WifiMonitor;I)I

    goto/16 :goto_16

    .line 278
    .end local v0           #event:I
    .end local v1           #eventData:Ljava/lang/String;
    :cond_b1
    const-string v6, "DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 279
    const/4 v0, 0x2

    .restart local v0       #event:I
    goto :goto_95

    .line 280
    .end local v0           #event:I
    :cond_bb
    const-string v6, "STATE-CHANGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 281
    const/4 v0, 0x3

    .restart local v0       #event:I
    goto :goto_95

    .line 282
    .end local v0           #event:I
    :cond_c5
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 283
    const/4 v0, 0x4

    .restart local v0       #event:I
    goto :goto_95

    .line 284
    .end local v0           #event:I
    :cond_cf
    const-string v6, "LINK-SPEED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 285
    const/4 v0, 0x5

    .restart local v0       #event:I
    goto :goto_95

    .line 286
    .end local v0           #event:I
    :cond_d9
    const-string v6, "TERMINATING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 287
    const/4 v0, 0x6

    .restart local v0       #event:I
    goto :goto_95

    .line 288
    .end local v0           #event:I
    :cond_e3
    const-string v6, "DRIVER-STATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 289
    const/4 v0, 0x7

    .restart local v0       #event:I
    goto :goto_95

    .line 291
    .end local v0           #event:I
    :cond_ed
    const-string v6, "SUCCESS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 292
    const/16 v0, 0x8

    .restart local v0       #event:I
    goto :goto_95

    .line 293
    .end local v0           #event:I
    :cond_f8
    const-string v6, "FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_103

    .line 294
    const/16 v0, 0x9

    .restart local v0       #event:I
    goto :goto_95

    .line 295
    .end local v0           #event:I
    :cond_103
    const-string v6, "OVERLAP-DETECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 296
    const/16 v0, 0xa

    .restart local v0       #event:I
    goto :goto_95

    .line 297
    .end local v0           #event:I
    :cond_10e
    const-string v6, "TIMEOUT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 298
    const/16 v0, 0xb

    .restart local v0       #event:I
    goto/16 :goto_95

    .line 301
    .end local v0           #event:I
    :cond_11a
    const-string v6, "NO-CONNECTION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_126

    .line 302
    const/16 v0, 0xd

    .restart local v0       #event:I
    goto/16 :goto_95

    .line 305
    .end local v0           #event:I
    :cond_126
    const/16 v0, 0xc

    .restart local v0       #event:I
    goto/16 :goto_95

    .line 310
    .restart local v1       #eventData:Ljava/lang/String;
    :cond_12a
    if-ne v0, v12, :cond_13c

    .line 311
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 312
    .local v4, ind:I
    if-eq v4, v8, :cond_a5

    .line 313
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a5

    .line 316
    .end local v4           #ind:I
    :cond_13c
    const/16 v6, 0x8

    if-eq v0, v6, :cond_14a

    if-eq v0, v10, :cond_14a

    const/16 v6, 0xb

    if-eq v0, v6, :cond_14a

    const/16 v6, 0x9

    if-ne v0, v6, :cond_14d

    .line 318
    :cond_14a
    const/4 v1, 0x0

    goto/16 :goto_a5

    .line 321
    :cond_14d
    const/16 v6, 0xd

    if-ne v0, v6, :cond_154

    .line 322
    const/4 v1, 0x0

    goto/16 :goto_a5

    .line 325
    :cond_154
    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 326
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_a5

    .line 327
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a5

    .line 333
    .end local v4           #ind:I
    :cond_164
    const/4 v6, 0x7

    if-ne v0, v6, :cond_16c

    .line 334
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_aa

    .line 335
    :cond_16c
    const/4 v6, 0x6

    if-ne v0, v6, :cond_1a4

    .line 340
    const-string v6, "connection closed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_180

    .line 342
    const-string v6, "WifiMonitor"

    const-string v6, "Monitor socket is closed, exiting thread"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 351
    :cond_180
    const-string/jumbo v6, "recv error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_199

    .line 352
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$304(Landroid/net/wifi/WifiMonitor;)I

    move-result v6

    if-le v6, v10, :cond_16

    .line 354
    const-string v6, "WifiMonitor"

    const-string/jumbo v6, "too many recv errors, closing connection"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_199
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    goto/16 :goto_50

    .line 365
    :cond_1a4
    const/16 v6, 0x8

    if-eq v0, v6, :cond_1b2

    if-eq v0, v10, :cond_1b2

    const/16 v6, 0xb

    if-eq v0, v6, :cond_1b2

    const/16 v6, 0x9

    if-ne v0, v6, :cond_1b7

    .line 367
    :cond_1b2
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsEvent(I)V

    goto/16 :goto_aa

    .line 370
    :cond_1b7
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_aa
.end method
