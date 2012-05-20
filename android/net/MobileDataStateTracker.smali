.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$1;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_IP_ADDRESS:Z = false

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"


# instance fields
.field private mApnName:Ljava/lang/String;

.field private mApnType:Ljava/lang/String;

.field private mApnTypeToWatchFor:Ljava/lang/String;

.field private mEnabled:Z

.field private mIsDefaultOrHipri:Z

.field private mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "target"
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-boolean v7, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    .line 74
    invoke-static {p3}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "hipri"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 76
    const-string v0, "default"

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    .line 80
    :goto_31
    if-eqz p3, :cond_35

    if-ne p3, v9, :cond_37

    .line 82
    :cond_35
    iput-boolean v8, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    .line 85
    :cond_37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 86
    if-nez p3, :cond_af

    .line 87
    iput-boolean v8, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 92
    :goto_3e
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "net.rmnet0.dns1"

    aput-object v1, v0, v7

    const-string/jumbo v1, "net.rmnet0.dns2"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string/jumbo v2, "net.eth0.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "net.eth0.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "net.eth0.dns3"

    aput-object v2, v0, v1

    const-string/jumbo v1, "net.eth0.dns4"

    aput-object v1, v0, v9

    const/4 v1, 0x6

    const-string/jumbo v2, "net.gprs.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "net.gprs.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "net.ppp0.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "net.ppp0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "net.pdp0.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "net.pdp0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "net.pdp1.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "net.pdp1.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "net.pdp2.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "net.pdp2.dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    .line 112
    return-void

    .line 78
    :cond_aa
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    goto :goto_31

    .line 89
    :cond_af
    iput-boolean v7, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_3e
.end method

.method static synthetic access$100(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mApnName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/MobileDataStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return v0
.end method

.method static synthetic access$402(Landroid/net/MobileDataStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return p1
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/MobileDataStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    return v0
.end method

.method private getDnsList()[Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x2

    .line 625
    iget-object v8, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-nez v8, :cond_a

    .line 626
    invoke-super {p0}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v8

    .line 642
    :goto_9
    return-object v8

    .line 628
    :cond_a
    new-array v1, v10, [Ljava/lang/String;

    .line 630
    .local v1, dnsAddresses:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 632
    .local v3, j:I
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_12
    if-ge v2, v5, :cond_3b

    aget-object v6, v0, v2

    .line 633
    .local v6, propName:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3d

    .line 634
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 635
    .local v7, value:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3d

    const-string v8, "0.0.0.0"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 636
    if-ge v4, v10, :cond_3d

    .line 637
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    aput-object v7, v1, v4

    .line 632
    .end local v7           #value:Ljava/lang/String;
    :goto_37
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_12

    .end local v6           #propName:Ljava/lang/String;
    :cond_3b
    move-object v8, v1

    .line 642
    goto :goto_9

    .restart local v6       #propName:Ljava/lang/String;
    :cond_3d
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_37
.end method

.method private getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 5
    .parameter "intent"

    .prologue
    .line 136
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 138
    const-string v2, "apnType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, apnTypeList:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 141
    const-class v2, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v2, p0

    .line 144
    .end local v0           #apnTypeList:Ljava/lang/String;
    :goto_1e
    return-object v2

    .restart local p0
    :cond_1f
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1e
.end method

.method private getPhoneService(Z)V
    .registers 3
    .parameter "forceRefresh"

    .prologue
    .line 313
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_13

    .line 314
    :cond_6
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 316
    :cond_13
    return-void
.end method

.method private isApnTypeIncluded(Ljava/lang/String;)Z
    .registers 7
    .parameter "typeList"

    .prologue
    const/4 v4, 0x0

    .line 149
    if-nez p1, :cond_5

    move v2, v4

    .line 159
    :goto_4
    return v2

    .line 152
    :cond_5
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 154
    aget-object v2, v1, v0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    aget-object v2, v1, v0

    const-string v3, "*"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 156
    :cond_23
    const/4 v2, 0x1

    goto :goto_4

    .line 153
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_28
    move v2, v4

    .line 159
    goto :goto_4
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .registers 4
    .parameter "netType"

    .prologue
    .line 602
    packed-switch p0, :pswitch_data_34

    .line 614
    :pswitch_3
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error mapping networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to apnType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v0, 0x0

    :goto_22
    return-object v0

    .line 604
    :pswitch_23
    const-string v0, "default"

    goto :goto_22

    .line 606
    :pswitch_26
    const-string v0, "mms"

    goto :goto_22

    .line 608
    :pswitch_29
    const-string/jumbo v0, "supl"

    goto :goto_22

    .line 610
    :pswitch_2d
    const-string v0, "dun"

    goto :goto_22

    .line 612
    :pswitch_30
    const-string v0, "hipri"

    goto :goto_22

    .line 602
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_23
        :pswitch_3
        :pswitch_26
        :pswitch_29
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .registers 8
    .parameter "apnType"
    .parameter "enable"

    .prologue
    const-string v4, "MobileDataStateTracker"

    .line 573
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 578
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 579
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_43

    .line 580
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_15
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_5e

    const-string v3, "enable"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v2, 0x3

    :goto_42
    return v2

    .line 586
    :cond_43
    if-eqz p2, :cond_4c

    .line 587
    :try_start_45
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_42

    .line 589
    :cond_4c
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_51} :catch_53

    move-result v2

    goto :goto_42

    .line 591
    :catch_53
    move-exception v2

    move-object v0, v2

    .line 592
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_5b

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 578
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 596
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5e
    const-string v3, "disable"

    goto :goto_26
.end method


# virtual methods
.method public getNameServers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 621
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;->getDnsList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 348
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 356
    const-string/jumbo v0, "unknown"

    .line 357
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 359
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 394
    :goto_11
    :pswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 361
    :pswitch_26
    const-string v0, "gprs"

    .line 362
    goto :goto_11

    .line 364
    :pswitch_29
    const-string v0, "edge"

    .line 365
    goto :goto_11

    .line 367
    :pswitch_2c
    const-string/jumbo v0, "umts"

    .line 368
    goto :goto_11

    .line 370
    :pswitch_30
    const-string v0, "hsdpa"

    .line 371
    goto :goto_11

    .line 373
    :pswitch_33
    const-string v0, "hsupa"

    .line 374
    goto :goto_11

    .line 376
    :pswitch_36
    const-string v0, "hspa"

    .line 377
    goto :goto_11

    .line 379
    :pswitch_39
    const-string v0, "cdma"

    .line 380
    goto :goto_11

    .line 382
    :pswitch_3c
    const-string v0, "1xrtt"

    .line 383
    goto :goto_11

    .line 385
    :pswitch_3f
    const-string v0, "evdo"

    .line 386
    goto :goto_11

    .line 388
    :pswitch_42
    const-string v0, "evdo"

    .line 389
    goto :goto_11

    .line 391
    :pswitch_45
    const-string v0, "evdo"

    goto :goto_11

    .line 359
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_39
        :pswitch_3f
        :pswitch_42
        :pswitch_3c
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_11
        :pswitch_45
    .end packed-switch
.end method

.method public isAvailable()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 322
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 328
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_5
    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    .line 329
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_e

    :cond_c
    move v2, v3

    .line 339
    :goto_d
    return v2

    .line 332
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v2

    goto :goto_d

    .line 333
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_1d

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 328
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public reconnect()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "default"

    const-string v5, "apnChanged"

    .line 416
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 417
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_90

    .line 460
    const-string v1, "MobileDataStateTracker"

    const-string v2, "Error in reconnect - unexpected response."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iput-boolean v3, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 464
    :cond_1b
    :goto_1b
    iget-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    :goto_1d
    return v1

    .line 420
    :pswitch_1e
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 422
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 423
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "apnChanged"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v5, v2}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "state"

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string/jumbo v1, "reason"

    const-string v2, "apnChanged"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v1, "apnType"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "apn"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v1, "iface"

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string/jumbo v1, "networkUnvailable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    const-string v1, "gateway"

    iget v2, p0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1b

    .line 437
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_75
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_1b

    .line 441
    :pswitch_78
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_86

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v2, "default"

    if-ne v1, v6, :cond_86

    .line 448
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    move v1, v3

    .line 449
    goto :goto_1d

    .line 455
    :cond_86
    :pswitch_86
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v2, "default"

    if-eq v1, v6, :cond_1b

    .line 456
    iput-boolean v3, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_1b

    .line 417
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_75
        :pswitch_86
        :pswitch_78
    .end packed-switch
.end method

.method public requestRouteToHost(I)Z
    .registers 6
    .parameter "hostAddress"

    .prologue
    const/4 v3, 0x0

    .line 547
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested host route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_4e

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4e

    .line 551
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    .line 553
    :goto_4b
    return v0

    :cond_4c
    move v0, v3

    .line 551
    goto :goto_4b

    :cond_4e
    move v0, v3

    .line 553
    goto :goto_4b
.end method

.method public setRadio(Z)Z
    .registers 8
    .parameter "turnOn"

    .prologue
    const/4 v4, 0x0

    const-string v5, "MobileDataStateTracker"

    .line 473
    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 478
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 479
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_34

    .line 480
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_15
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set radio power to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_46

    const-string/jumbo v3, "on"

    :goto_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 493
    :goto_33
    return v2

    .line 486
    :cond_34
    :try_start_34
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3b

    move-result v2

    goto :goto_33

    .line 487
    :catch_3b
    move-exception v2

    move-object v0, v2

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_43

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 478
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 492
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_46
    const-string/jumbo v3, "off"

    goto :goto_27
.end method

.method public startMonitoring()V
    .registers 5

    .prologue
    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, filter:Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 124
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    new-instance v2, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2f

    .line 130
    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 133
    :goto_2e
    return-void

    .line 132
    :cond_2f
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_2e
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 518
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 534
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 409
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    move v0, v3

    :goto_f
    return v0

    :cond_10
    move v0, v2

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Mobile data state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
