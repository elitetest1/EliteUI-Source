.class public Landroid/util/LongSparseArray$StringParcelling;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LongSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringParcelling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/util/LongSparseArray<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parcel(Landroid/util/LongSparseArray;Landroid/os/Parcel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, -0x1

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmSize(Landroid/util/LongSparseArray;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-static {p1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x0

    const-class v0, [Ljava/lang/String;

    invoke-static {p1, p3, p0, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray$StringParcelling;->parcel(Landroid/util/LongSparseArray;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    invoke-static {v0, p0}, Landroid/util/LongSparseArray;->-$$Nest$fputmSize(Landroid/util/LongSparseArray;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/LongSparseArray;->-$$Nest$fputmKeys(Landroid/util/LongSparseArray;[J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/LongSparseArray;->-$$Nest$fputmValues(Landroid/util/LongSparseArray;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object p1

    array-length p1, p1

    const/4 v2, 0x1

    if-lt p1, p0, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-static {v0}, Landroid/util/LongSparseArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseArray;)[Ljava/lang/Object;

    move-result-object p1

    array-length p1, p1

    if-lt p1, p0, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-lez p0, :cond_4

    invoke-static {v0}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    move p1, v2

    :goto_2
    if-ge p1, p0, :cond_4

    invoke-static {v0}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object v5

    aget-wide v5, v5, p1

    cmp-long v5, v3, v5

    if-gez v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/util/LongSparseArray$StringParcelling;->unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
.end method
