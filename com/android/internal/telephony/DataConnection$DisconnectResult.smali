.class public Lcom/android/internal/telephony/DataConnection$DisconnectResult;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisconnectResult"
.end annotation


# instance fields
.field private apn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private connection:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/gsm/ApnSetting;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter "apn"
    .parameter "connection"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectResult;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DisconnectResult;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 347
    iput-object p3, p0, Lcom/android/internal/telephony/DataConnection$DisconnectResult;->connection:Ljava/lang/Object;

    .line 348
    return-void
.end method


# virtual methods
.method public getApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DisconnectResult;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    return-object v0
.end method

.method public getConnection()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DisconnectResult;->connection:Ljava/lang/Object;

    return-object v0
.end method
