.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport$1;
.super Landroid/os/Handler;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;

    # invokes: Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;->access$100(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;Landroid/os/Message;)V

    .line 174
    return-void
.end method
