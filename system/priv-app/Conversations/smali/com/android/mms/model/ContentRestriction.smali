.class public interface abstract Lcom/android/mms/model/ContentRestriction;
.super Ljava/lang/Object;
.source "ContentRestriction.java"


# virtual methods
.method public abstract checkAudioContentType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation
.end method

.method public abstract checkImageContentType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation
.end method

.method public abstract checkMessageSize(IILandroid/content/ContentResolver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation
.end method

.method public abstract checkResolution(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation
.end method

.method public abstract checkVideoContentType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation
.end method
