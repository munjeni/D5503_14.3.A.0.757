.class Lcom/android/phone/IccDepersonalizationPanel$2$2;
.super Ljava/lang/Object;
.source "IccDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IccDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/IccDepersonalizationPanel$2;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 220
    return-void
.end method
