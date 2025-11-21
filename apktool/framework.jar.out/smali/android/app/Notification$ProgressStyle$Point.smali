.class public final Landroid/app/Notification$ProgressStyle$Point;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$ProgressStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation


# instance fields
.field private blacklist mColor:I

.field private blacklist mId:I

.field private blacklist mPosition:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    iput p1, p0, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/app/Notification$ProgressStyle$Point;

    iget v2, p0, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    iget v3, p1, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    iget v3, p1, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    iget p1, p1, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    return p0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    return p0
.end method

.method public whitelist getPosition()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist setColor(I)Landroid/app/Notification$ProgressStyle$Point;
    .locals 0

    iput p1, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    return-object p0
.end method

.method public whitelist setId(I)Landroid/app/Notification$ProgressStyle$Point;
    .locals 0

    iput p1, p0, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    return-object p0
.end method
