.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3$1;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;)V
    .registers 2
    .parameter

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3$1;->this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3$1;->this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string/jumbo v1, "networkTypeChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1509
    return-void
.end method
