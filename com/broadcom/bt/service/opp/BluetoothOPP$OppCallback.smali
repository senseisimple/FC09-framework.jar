.class Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;
.super Lcom/broadcom/bt/service/opp/IOppCallback$Stub;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/BluetoothOPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V
    .registers 2
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;Lcom/broadcom/bt/service/opp/BluetoothOPP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;-><init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .registers 5
    .parameter "filePathName"

    .prologue
    const-string v1, "BluetoothOPP"

    .line 775
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 777
    const-string v1, "BluetoothOPP"

    const-string/jumbo v2, "onOpOwnerVcardNotSet ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_28

    .line 779
    :try_start_13
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_28
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_1e

    .line 784
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 780
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 781
    .local v0, t:Ljava/lang/Throwable;
    :try_start_20
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpOwnerVcardNotSet event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_1c

    .line 775
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcClose(I)V
    .registers 5
    .parameter "status"

    .prologue
    .line 712
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 714
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcClose(I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 720
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 715
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 716
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcClose event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 712
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcEnable()V
    .registers 4

    .prologue
    .line 661
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 663
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcEnable()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 668
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 664
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 665
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcEnable event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 661
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .registers 6
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 702
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 704
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectPushed(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 709
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 705
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 706
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcObjectPushed event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 702
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .registers 6
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 692
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 694
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectReceived(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 699
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 695
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 696
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcObjectReceived event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 692
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcOpen()V
    .registers 4

    .prologue
    .line 671
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 673
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcOpen()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 678
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 674
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 675
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcOpen event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 671
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcProgress(II)V
    .registers 6
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 682
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 684
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcProgress(II)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 689
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 685
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 686
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcProgress event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 682
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 15
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 754
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    move-result-object v0

    if-eqz v0, :cond_18

    .line 756
    :try_start_9
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_18} :catch_1a

    .line 762
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 758
    :catch_1a
    move-exception v0

    move-object v7, v0

    .line 759
    .local v7, t:Ljava/lang/Throwable;
    :try_start_1c
    const-string v0, "BluetoothOPP"

    const-string v1, "Error processing OPP onOpsAccessRequest event"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_18

    .line 754
    .end local v7           #t:Ljava/lang/Throwable;
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsClose()V
    .registers 4

    .prologue
    .line 765
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 767
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsClose()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 772
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 768
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 769
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpsClose event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 765
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .registers 6
    .parameter "format"
    .parameter "filePathName"

    .prologue
    .line 733
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 735
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsObjectReceived(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 740
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 736
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 737
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpsObjectReceived event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 733
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsOpen()V
    .registers 4

    .prologue
    .line 743
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 745
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsOpen()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 750
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 746
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 747
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpsOpen event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 743
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsProgress(II)V
    .registers 6
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 723
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 725
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsProgress(II)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 730
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 726
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 727
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcProgess event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 723
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
