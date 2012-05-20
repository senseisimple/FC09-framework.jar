.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 1910
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1910
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1913
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1915
    .local v3, action:Ljava/lang/String;
    const-string v14, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_55

    .line 1916
    const-string v14, "android.intent.extra.DOCK_STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1919
    .local v9, dockState:I
    packed-switch v9, :pswitch_data_404

    .line 1928
    const/4 v7, 0x0

    .line 1930
    .local v7, config:I
    :goto_1b
    const/4 v14, 0x3

    invoke-static {v14, v7}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x1000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 1933
    .local v10, isConnected:Z
    if-nez v9, :cond_50

    if-eqz v10, :cond_50

    .line 1934
    const/16 v14, 0x1000

    const/4 v15, 0x0

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x1000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    .end local v7           #config:I
    .end local v9           #dockState:I
    .end local v10           #isConnected:Z
    .end local p1
    :cond_50
    :goto_50
    return-void

    .line 1921
    .restart local v9       #dockState:I
    .restart local p1
    :pswitch_51
    const/4 v7, 0x7

    .line 1922
    .restart local v7       #config:I
    goto :goto_1b

    .line 1924
    .end local v7           #config:I
    :pswitch_53
    const/4 v7, 0x6

    .line 1925
    .restart local v7       #config:I
    goto :goto_1b

    .line 1940
    .end local v7           #config:I
    .end local v9           #dockState:I
    :cond_55
    const-string v14, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11e

    .line 1941
    const-string v14, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1943
    .local v13, state:I
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1944
    .local v6, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1945
    .local v4, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x80

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x80

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c5

    const/4 v14, 0x1

    move v10, v14

    .line 1948
    .restart local v10       #isConnected:Z
    :goto_ac
    if-eqz v10, :cond_d1

    const/4 v14, 0x2

    if-eq v13, v14, :cond_d1

    const/4 v14, 0x4

    if-eq v13, v14, :cond_d1

    .line 1950
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v14

    if-eqz v14, :cond_c8

    .line 1951
    if-nez v13, :cond_50

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    invoke-static {v14, v4}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_50

    .line 1945
    .end local v10           #isConnected:Z
    :cond_c5
    const/4 v14, 0x0

    move v10, v14

    goto :goto_ac

    .line 1959
    .restart local v10       #isConnected:Z
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v14, v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_50

    .line 1961
    :cond_d1
    if-nez v10, :cond_50

    const/4 v14, 0x2

    if-eq v13, v14, :cond_d9

    const/4 v14, 0x4

    if-ne v13, v14, :cond_50

    .line 1964
    :cond_d9
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v14

    if-eqz v14, :cond_f9

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static {v14}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #setter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v14, v4}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 1976
    :cond_ef
    :goto_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #calls: Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V
    invoke-static {v14, v4}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_50

    .line 1971
    :cond_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #calls: Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z
    invoke-static {v14}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Z

    move-result v14

    if-eqz v14, :cond_ef

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static {v14}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    #getter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v15}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v15

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v14, v15}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_ef

    .line 1978
    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    .restart local p1
    :cond_11e
    const-string v14, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1dd

    .line 1979
    const-string v14, "android.bluetooth.headset.extra.STATE"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1981
    .restart local v13       #state:I
    const/16 v8, 0x10

    .line 1982
    .local v8, device:I
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1983
    .restart local v6       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v4, 0x0

    .line 1984
    .restart local v4       #address:Ljava/lang/String;
    if-eqz v6, :cond_152

    .line 1985
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1986
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    .line 1987
    .local v5, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v5, :cond_152

    .line 1988
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v14

    sparse-switch v14, :sswitch_data_40c

    .line 2000
    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_152
    :goto_152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b5

    const/4 v14, 0x1

    move v10, v14

    .line 2003
    .restart local v10       #isConnected:Z
    :goto_183
    if-eqz v10, :cond_1b8

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1b8

    .line 2004
    const/4 v14, 0x0

    invoke-static {v8, v14, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    const/4 v15, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static {v14, v15}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_50

    .line 1991
    .end local v10           #isConnected:Z
    .restart local v5       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_1af
    const/16 v8, 0x20

    .line 1992
    goto :goto_152

    .line 1994
    :sswitch_1b2
    const/16 v8, 0x40

    goto :goto_152

    .line 2000
    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_1b5
    const/4 v14, 0x0

    move v10, v14

    goto :goto_183

    .line 2010
    .restart local v10       #isConnected:Z
    :cond_1b8
    if-nez v10, :cond_50

    const/4 v14, 0x2

    if-ne v13, v14, :cond_50

    .line 2011
    const/4 v14, 0x1

    invoke-static {v8, v14, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    const/4 v15, 0x1

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static {v14, v15}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_50

    .line 2017
    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v8           #device:I
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    .restart local p1
    :cond_1dd
    const-string v14, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a8

    .line 2018
    const-string/jumbo v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2019
    .restart local v13       #state:I
    const-string v14, "microphone"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2021
    .local v11, microphone:I
    if-eqz v11, :cond_251

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 2023
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_22e

    if-eqz v10, :cond_22e

    .line 2024
    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    .line 2028
    :cond_22e
    const/4 v14, 0x1

    if-ne v13, v14, :cond_50

    if-nez v10, :cond_50

    .line 2029
    const/4 v14, 0x4

    const/4 v15, 0x1

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/Integer;

    const/16 v16, 0x4

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    .line 2035
    .end local v10           #isConnected:Z
    :cond_251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 2036
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_284

    if-eqz v10, :cond_284

    .line 2037
    const/16 v14, 0x8

    const/4 v15, 0x0

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    .line 2041
    :cond_284
    const/4 v14, 0x1

    if-ne v13, v14, :cond_50

    if-nez v10, :cond_50

    .line 2042
    const/16 v14, 0x8

    const/4 v15, 0x1

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/Integer;

    const/16 v16, 0x8

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    .line 2048
    .end local v10           #isConnected:Z
    .end local v11           #microphone:I
    .end local v13           #state:I
    :cond_2a8
    const-string v14, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2fd

    .line 2049
    const-string v14, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2051
    .restart local v13       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v14

    monitor-enter v14

    .line 2052
    :try_start_2c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v15}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2f3

    .line 2053
    packed-switch v13, :pswitch_data_41a

    .line 2061
    const/4 v13, -0x1

    .line 2064
    :goto_2d8
    const/4 v15, -0x1

    if-eq v13, v15, :cond_2f3

    .line 2065
    new-instance v12, Landroid/content/Intent;

    const-string v15, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2066
    .local v12, newIntent:Landroid/content/Intent;
    const-string v15, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v12, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2070
    .end local v12           #newIntent:Landroid/content/Intent;
    :cond_2f3
    monitor-exit v14

    goto/16 :goto_50

    :catchall_2f6
    move-exception v15

    monitor-exit v14
    :try_end_2f8
    .catchall {:try_start_2c5 .. :try_end_2f8} :catchall_2f6

    throw v15

    .line 2055
    :pswitch_2f9
    const/4 v13, 0x1

    .line 2056
    goto :goto_2d8

    .line 2058
    :pswitch_2fb
    const/4 v13, 0x0

    .line 2059
    goto :goto_2d8

    .line 2073
    .end local v13           #state:I
    :cond_2fd
    const-string v14, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_380

    .line 2074
    const-string/jumbo v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2075
    .restart local v13       #state:I
    const-string v14, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TVOUT_PLUG evt state : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x800

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 2078
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_35c

    if-eqz v10, :cond_35c

    .line 2079
    const/16 v14, 0x800

    const/4 v15, 0x0

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x800

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    .line 2083
    :cond_35c
    const/4 v14, 0x1

    if-ne v13, v14, :cond_50

    if-nez v10, :cond_50

    .line 2084
    const/16 v14, 0x800

    const/4 v15, 0x1

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/Integer;

    const/16 v16, 0x800

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    .line 2090
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    :cond_380
    const-string v14, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_50

    .line 2091
    const-string/jumbo v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2092
    .restart local v13       #state:I
    const-string v14, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EXTRA_DOCK_SPEAKER evt state : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x1000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 2095
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_3df

    if-eqz v10, :cond_3df

    .line 2096
    const/16 v14, 0x1000

    const/4 v15, 0x0

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x1000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    .line 2100
    :cond_3df
    const/4 v14, 0x1

    if-ne v13, v14, :cond_50

    if-nez v10, :cond_50

    .line 2101
    const/16 v14, 0x1000

    const/4 v15, 0x1

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/Integer;

    const/16 v16, 0x1000

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    .line 1919
    nop

    :pswitch_data_404
    .packed-switch 0x1
        :pswitch_51
        :pswitch_53
    .end packed-switch

    .line 1988
    :sswitch_data_40c
    .sparse-switch
        0x404 -> :sswitch_1af
        0x408 -> :sswitch_1af
        0x420 -> :sswitch_1b2
    .end sparse-switch

    .line 2053
    :pswitch_data_41a
    .packed-switch 0x0
        :pswitch_2fb
        :pswitch_2f9
    .end packed-switch
.end method
