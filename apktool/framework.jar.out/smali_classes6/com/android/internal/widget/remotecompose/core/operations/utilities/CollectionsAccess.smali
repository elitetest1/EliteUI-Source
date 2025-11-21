.class public interface abstract Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
.super Ljava/lang/Object;
.source "CollectionsAccess.java"


# virtual methods
.method public abstract blacklist getFloatValue(II)F
.end method

.method public abstract blacklist getFloats(I)[F
.end method

.method public abstract blacklist getId(II)I
.end method

.method public blacklist getIntValue(II)I
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloatValue(II)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public abstract blacklist getListLength(I)I
.end method
