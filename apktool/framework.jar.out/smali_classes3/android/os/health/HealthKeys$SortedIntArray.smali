.class Landroid/os/health/HealthKeys$SortedIntArray;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortedIntArray"
.end annotation


# instance fields
.field greylist-max-o mArray:[I

.field greylist-max-o mCount:I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    return-void
.end method


# virtual methods
.method greylist-max-o addValue(I)V
    .locals 3

    iget-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    iget v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    aput p1, v0, v1

    return-void
.end method

.method greylist-max-o getArray()[I
    .locals 3

    iget v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    iget-object v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    iget-object p0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    return-object p0

    :cond_0
    new-array p0, v0, [I

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method
