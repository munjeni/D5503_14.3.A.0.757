.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnExtraCommandListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_EXTRA_COMMAND:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

    .line 496
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 502
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 518
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 526
    :goto_0
    return-void

    .line 520
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 521
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "response"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "response":Ljava/lang/String;
    const-string v3, "extras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 523
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

    invoke-interface {v3, v2, v1}, Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;->onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$900(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 505
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 506
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 507
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "response"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v2, "extras"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 510
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 511
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 512
    return-void
.end method
