.class Lcom/android/phone/SomcEmergencyDialer$1;
.super Landroid/content/BroadcastReceiver;
.source "SomcEmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcEmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcEmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcEmergencyDialer;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/SomcEmergencyDialer$1;->this$0:Lcom/android/phone/SomcEmergencyDialer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer$1;->this$0:Lcom/android/phone/SomcEmergencyDialer;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 107
    :cond_0
    return-void
.end method