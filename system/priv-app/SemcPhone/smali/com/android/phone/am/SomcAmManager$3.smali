.class Lcom/android/phone/am/SomcAmManager$3;
.super Ljava/lang/Object;
.source "SomcAmManager.java"

# interfaces
.implements Lcom/android/phone/SomcCallRecorder$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmManager;->recordMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmManager;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmManager;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/phone/am/SomcAmManager$3;->this$0:Lcom/android/phone/am/SomcAmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotEnoughStorage()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager$3;->this$0:Lcom/android/phone/am/SomcAmManager;

    # getter for: Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->access$000(Lcom/android/phone/am/SomcAmManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1099

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    return-void
.end method

.method public onRecorderStart()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onRecorderStop()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager$3;->this$0:Lcom/android/phone/am/SomcAmManager;

    # getter for: Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->access$000(Lcom/android/phone/am/SomcAmManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1099

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    return-void
.end method

.method public onResourceOccupied()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager$3;->this$0:Lcom/android/phone/am/SomcAmManager;

    # getter for: Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->access$000(Lcom/android/phone/am/SomcAmManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1099

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    return-void
.end method
