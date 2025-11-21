.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
.super Ljava/lang/Object;
.source "CoreDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickAreaRepresentation"
.end annotation


# instance fields
.field blacklist mBottom:F

.field final blacklist mContentDescription:Ljava/lang/String;

.field blacklist mId:I

.field blacklist mLeft:F

.field final blacklist mMetadata:Ljava/lang/String;

.field blacklist mRight:F

.field blacklist mTop:F


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;FFFFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    iput-object p7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist contains(FF)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iget v3, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    return p0
.end method

.method public blacklist getLeft()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    return p0
.end method

.method public blacklist getMetadata()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getTop()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist height()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public blacklist width()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method
