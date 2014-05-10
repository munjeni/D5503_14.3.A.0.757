.class Lcom/sonymobile/superstamina/powersaver/features/XLoud$1;
.super Landroid/database/ContentObserver;
.source "XLoud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/XLoud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/XLoud;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/XLoud;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/XLoud;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 45
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/XLoud;

    # invokes: Lcom/sonymobile/superstamina/powersaver/features/XLoud;->getCurrentMode()I
    invoke-static {v1}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->access$000(Lcom/sonymobile/superstamina/powersaver/features/XLoud;)I

    move-result v0

    .line 46
    .local v0, "value":I
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/XLoud;

    # getter for: Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mLastValue:I
    invoke-static {v1}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->access$100(Lcom/sonymobile/superstamina/powersaver/features/XLoud;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/XLoud;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUser()V

    .line 49
    :cond_0
    return-void
.end method
