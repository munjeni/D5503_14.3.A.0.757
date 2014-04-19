.class Lcom/android/server/wm/WindowManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 326
    const-string v4, "com.sony.smallapp.intent.extra.HIDE_WINDOWS_CALLER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "caller":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v4, "com.sony.smallapp.intent.extra.ENABLE_HIDE_SHOW_ANIMATION"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    const/4 v1, 0x1

    .line 336
    .local v1, "animationFlag":I
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.sony.smallapp.intent.action.HIDE_WINDOWS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 338
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5, v1, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 339
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 334
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "animationFlag":I
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "animationFlag":I
    goto :goto_1

    .line 340
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    const-string v4, "com.sony.smallapp.intent.action.SHOW_WINDOWS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5, v1, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 343
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
