.class public final enum Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
.super Ljava/lang/Enum;
.source "DeviceStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/DeviceStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionProgressInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Abnormal_State:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum CONNECTED_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum DISCONNECTED_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum DSX:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum De_registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum EAP_authentication_Device:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum EAP_authentication_User:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum IP_Renew:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum IP_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Idle:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Met_Exit_Criteria:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Not_Met_Entry_Criteria:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum PKM:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum RESUME_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Ranging:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Registered:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum SBC:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum SUSPEND_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Syncup_MAC:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Syncup_PHY:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Timeout_NDREG:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Timeout_NE:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field public static final enum Timeout_Sync:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Ranging"

    invoke-direct {v0, v1, v3}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Ranging:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 65
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "SBC"

    invoke-direct {v0, v1, v4}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->SBC:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 67
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "PKM"

    invoke-direct {v0, v1, v5}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->PKM:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 69
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Registration"

    invoke-direct {v0, v1, v6}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 71
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "DSX"

    invoke-direct {v0, v1, v7}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->DSX:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 73
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Registered"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 75
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Idle"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 77
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "IP_Renew"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_Renew:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 79
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "De_registration"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 81
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Syncup_PHY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 82
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Syncup_MAC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_MAC:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 83
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "EAP_authentication_Device"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_Device:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 84
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "EAP_authentication_User"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_User:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 85
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Timeout_Sync"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_Sync:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 86
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Timeout_NE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 87
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Timeout_NDREG"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NDREG:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 90
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "IP_USB"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 91
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "CONNECTED_USB"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->CONNECTED_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 92
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "RESUME_USB"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->RESUME_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 93
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "SUSPEND_USB"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->SUSPEND_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 94
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Met_Exit_Criteria"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Met_Exit_Criteria:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 95
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Not_Met_Entry_Criteria"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Not_Met_Entry_Criteria:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 96
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "Abnormal_State"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 97
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    const-string v1, "DISCONNECTED_USB"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->DISCONNECTED_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 60
    const/16 v0, 0x18

    new-array v0, v0, [Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Ranging:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->SBC:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->PKM:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->DSX:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_Renew:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_MAC:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_Device:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_User:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_Sync:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NDREG:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->CONNECTED_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->RESUME_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->SUSPEND_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Met_Exit_Criteria:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Not_Met_Entry_Criteria:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->DISCONNECTED_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->$VALUES:[Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    .registers 2
    .parameter "name"

    .prologue
    .line 60
    const-class v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    return-object p0
.end method

.method public static values()[Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->$VALUES:[Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v0}, [Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    return-object v0
.end method
