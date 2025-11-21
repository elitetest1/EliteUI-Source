.class public final Lcom/android/internal/util/QuickSelect;
.super Ljava/lang/Object;
.source "QuickSelect.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist partition(Ljava/util/List;IIILjava/util/Comparator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap(Ljava/util/List;II)V

    move p3, p1

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-static {p0, p3, p1}, Lcom/android/internal/util/QuickSelect;->swap(Ljava/util/List;II)V

    add-int/lit8 p3, p3, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap(Ljava/util/List;II)V

    return p3
.end method

.method private static blacklist partition([IIII)I
    .locals 2

    aget v0, p0, p3

    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([III)V

    move p3, p1

    :goto_0
    if-ge p1, p2, :cond_1

    aget v1, p0, p1

    if-ge v1, v0, :cond_0

    invoke-static {p0, p3, p1}, Lcom/android/internal/util/QuickSelect;->swap([III)V

    add-int/lit8 p3, p3, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([III)V

    return p3
.end method

.method private static blacklist partition([JIII)I
    .locals 4

    aget-wide v0, p0, p3

    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([JII)V

    move p3, p1

    :goto_0
    if-ge p1, p2, :cond_1

    aget-wide v2, p0, p1

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    invoke-static {p0, p3, p1}, Lcom/android/internal/util/QuickSelect;->swap([JII)V

    add-int/lit8 p3, p3, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([JII)V

    return p3
.end method

.method private static blacklist partition([Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    aget-object v0, p0, p3

    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([Ljava/lang/Object;II)V

    move p3, p1

    :goto_0
    if-ge p1, p2, :cond_1

    aget-object v1, p0, p1

    invoke-interface {p4, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-static {p0, p3, p1}, Lcom/android/internal/util/QuickSelect;->swap([Ljava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([Ljava/lang/Object;II)V

    return p3
.end method

.method public static blacklist select([IIII)I
    .locals 2

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    if-ltz p3, :cond_0

    if-le p2, p3, :cond_0

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p3, p1

    invoke-static {p0, p1, v1, p3}, Lcom/android/internal/util/QuickSelect;->selectImpl([IIII)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist select([JIII)J
    .locals 2

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    if-ltz p3, :cond_0

    if-le p2, p3, :cond_0

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p3, p1

    invoke-static {p0, p1, v1, p3}, Lcom/android/internal/util/QuickSelect;->selectImpl([JIII)I

    move-result p1

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist select(Ljava/util/List;IIILjava/util/Comparator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    if-ltz p3, :cond_0

    if-le p2, p3, :cond_0

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p3, p1

    invoke-static {p0, p1, v1, p3, p4}, Lcom/android/internal/util/QuickSelect;->selectImpl(Ljava/util/List;IIILjava/util/Comparator;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist select([Ljava/lang/Object;IIILjava/util/Comparator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    if-ltz p3, :cond_0

    if-le p2, p3, :cond_0

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p3, p1

    invoke-static {p0, p1, v1, p3, p4}, Lcom/android/internal/util/QuickSelect;->selectImpl([Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static blacklist selectImpl(Ljava/util/List;IIILjava/util/Comparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    :goto_0
    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/internal/util/QuickSelect;->partition(Ljava/util/List;IIILjava/util/Comparator;)I

    move-result v0

    if-ne p3, v0, :cond_1

    return p3

    :cond_1
    if-ge p3, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_0
.end method

.method private static blacklist selectImpl([IIII)I
    .locals 1

    :goto_0
    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/QuickSelect;->partition([IIII)I

    move-result v0

    if-ne p3, v0, :cond_1

    return p3

    :cond_1
    if-ge p3, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_0
.end method

.method private static blacklist selectImpl([JIII)I
    .locals 1

    :goto_0
    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/QuickSelect;->partition([JIII)I

    move-result v0

    if-ne p3, v0, :cond_1

    return p3

    :cond_1
    if-ge p3, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_0
.end method

.method private static blacklist selectImpl([Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    :goto_0
    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/internal/util/QuickSelect;->partition([Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    if-ne p3, v0, :cond_1

    return p3

    :cond_1
    if-ge p3, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_0
.end method

.method private static blacklist swap(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static blacklist swap([III)V
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p2

    aput v1, p0, p1

    aput v0, p0, p2

    return-void
.end method

.method private static blacklist swap([JII)V
    .locals 4

    aget-wide v0, p0, p1

    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    aput-wide v0, p0, p2

    return-void
.end method

.method private static blacklist swap([Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method
