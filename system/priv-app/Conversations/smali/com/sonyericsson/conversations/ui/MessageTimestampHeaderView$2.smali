.class Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$2;
.super Ljava/lang/Object;
.source "MessageTimestampHeaderView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->initStarAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->access$300(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightDimAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->access$200(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 330
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 333
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 336
    return-void
.end method