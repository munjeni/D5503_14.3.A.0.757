.class public Lcom/android/settings/Settings$AppOpsSummaryActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOpsSummaryActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1170
    const-class v0, Lcom/android/settings/applications/AppOpsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    const/4 v0, 0x1

    .line 1173
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
