.class public final enum Landroid/net/vpn/VpnType;
.super Ljava/lang/Enum;
.source "VpnType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/vpn/VpnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/vpn/VpnType;

.field public static final enum L2TP:Landroid/net/vpn/VpnType;

.field public static final enum L2TP_IPSEC:Landroid/net/vpn/VpnType;

.field public static final enum L2TP_IPSEC_PSK:Landroid/net/vpn/VpnType;

.field public static final enum PPTP:Landroid/net/vpn/VpnType;


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mDescriptionId:I

.field private mDisplayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string v12, "L2TP"

    .line 26
    new-instance v0, Landroid/net/vpn/VpnType;

    const-string v1, "PPTP"

    const-string v3, "PPTP"

    const v4, 0x10404a5

    const-class v5, Landroid/net/vpn/PptpProfile;

    invoke-direct/range {v0 .. v5}, Landroid/net/vpn/VpnType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroid/net/vpn/VpnType;->PPTP:Landroid/net/vpn/VpnType;

    .line 27
    new-instance v3, Landroid/net/vpn/VpnType;

    const-string v0, "L2TP"

    const-string v0, "L2TP"

    const v7, 0x10404a6

    const-class v8, Landroid/net/vpn/L2tpProfile;

    move-object v4, v12

    move v5, v9

    move-object v6, v12

    invoke-direct/range {v3 .. v8}, Landroid/net/vpn/VpnType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Landroid/net/vpn/VpnType;->L2TP:Landroid/net/vpn/VpnType;

    .line 28
    new-instance v3, Landroid/net/vpn/VpnType;

    const-string v4, "L2TP_IPSEC_PSK"

    const-string v6, "L2TP/IPSec PSK"

    const v7, 0x10404a7

    const-class v8, Landroid/net/vpn/L2tpIpsecPskProfile;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Landroid/net/vpn/VpnType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Landroid/net/vpn/VpnType;->L2TP_IPSEC_PSK:Landroid/net/vpn/VpnType;

    .line 30
    new-instance v3, Landroid/net/vpn/VpnType;

    const-string v4, "L2TP_IPSEC"

    const-string v6, "L2TP/IPSec CRT"

    const v7, 0x10404a8

    const-class v8, Landroid/net/vpn/L2tpIpsecProfile;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Landroid/net/vpn/VpnType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Landroid/net/vpn/VpnType;->L2TP_IPSEC:Landroid/net/vpn/VpnType;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/vpn/VpnType;

    sget-object v1, Landroid/net/vpn/VpnType;->PPTP:Landroid/net/vpn/VpnType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/vpn/VpnType;->L2TP:Landroid/net/vpn/VpnType;

    aput-object v1, v0, v9

    sget-object v1, Landroid/net/vpn/VpnType;->L2TP_IPSEC_PSK:Landroid/net/vpn/VpnType;

    aput-object v1, v0, v10

    sget-object v1, Landroid/net/vpn/VpnType;->L2TP_IPSEC:Landroid/net/vpn/VpnType;

    aput-object v1, v0, v11

    sput-object v0, Landroid/net/vpn/VpnType;->$VALUES:[Landroid/net/vpn/VpnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V
    .registers 6
    .parameter
    .parameter
    .parameter "displayName"
    .parameter "descriptionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/net/vpn/VpnProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p5, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/net/vpn/VpnProfile;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Landroid/net/vpn/VpnType;->mDisplayName:Ljava/lang/String;

    .line 40
    iput p4, p0, Landroid/net/vpn/VpnType;->mDescriptionId:I

    .line 41
    iput-object p5, p0, Landroid/net/vpn/VpnType;->mClass:Ljava/lang/Class;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/vpn/VpnType;
    .registers 2
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Landroid/net/vpn/VpnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/VpnType;

    return-object p0
.end method

.method public static values()[Landroid/net/vpn/VpnType;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Landroid/net/vpn/VpnType;->$VALUES:[Landroid/net/vpn/VpnType;

    invoke-virtual {v0}, [Landroid/net/vpn/VpnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/vpn/VpnType;

    return-object v0
.end method


# virtual methods
.method public getDescriptionId()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Landroid/net/vpn/VpnType;->mDescriptionId:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Landroid/net/vpn/VpnType;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/vpn/VpnType;->mClass:Ljava/lang/Class;

    return-object v0
.end method
