.class public interface abstract Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;
.super Ljava/lang/Object;
.source "ArrayAccess.java"


# virtual methods
.method public abstract blacklist getFloatValue(I)F
.end method

.method public abstract blacklist getFloats()[F
.end method

.method public blacklist getId(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIntValue(I)I
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloatValue(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public abstract blacklist getLength()I
.end method
