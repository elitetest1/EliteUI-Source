.class public final Landroid/hardware/DisplayLuts;
.super Ljava/lang/Object;
.source "DisplayLuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/DisplayLuts$Entry;
    }
.end annotation


# instance fields
.field private blacklist mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/DisplayLuts$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOffsets:Landroid/util/IntArray;

.field private blacklist mTotalLength:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    return-void
.end method

.method private blacklist addEntry(Landroid/hardware/DisplayLuts$Entry;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    iget v1, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    iget v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    invoke-virtual {p1}, Landroid/hardware/DisplayLuts$Entry;->getBuffer()[F

    move-result-object p1

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    return-void
.end method

.method private blacklist clear()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    iget-object p0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public blacklist getLutBuffers()[F
    .locals 6

    iget v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/DisplayLuts$Entry;

    invoke-virtual {v3}, Landroid/hardware/DisplayLuts$Entry;->getBuffer()[F

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getLutDimensions()[I
    .locals 3

    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/DisplayLuts$Entry;

    invoke-virtual {v2}, Landroid/hardware/DisplayLuts$Entry;->getDimension()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getLutSamplingKeys()[I
    .locals 3

    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/DisplayLuts$Entry;

    invoke-virtual {v2}, Landroid/hardware/DisplayLuts$Entry;->getSamplingKey()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getLutSizes()[I
    .locals 3

    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/DisplayLuts$Entry;

    invoke-virtual {v2}, Landroid/hardware/DisplayLuts$Entry;->getSize()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getOffsets()[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public whitelist set(Landroid/hardware/DisplayLuts$Entry;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/hardware/DisplayLuts;->clear()V

    invoke-direct {p0, p1}, Landroid/hardware/DisplayLuts;->addEntry(Landroid/hardware/DisplayLuts$Entry;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The entry is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist set(Landroid/hardware/DisplayLuts$Entry;Landroid/hardware/DisplayLuts$Entry;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/hardware/DisplayLuts$Entry;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/hardware/DisplayLuts$Entry;->getDimension()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/DisplayLuts;->clear()V

    invoke-direct {p0, p1}, Landroid/hardware/DisplayLuts;->addEntry(Landroid/hardware/DisplayLuts$Entry;)V

    invoke-direct {p0, p2}, Landroid/hardware/DisplayLuts;->addEntry(Landroid/hardware/DisplayLuts$Entry;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The entries should be 1D and 3D in order!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The entry is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayLuts{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/DisplayLuts$Entry;

    invoke-virtual {v1}, Landroid/hardware/DisplayLuts$Entry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist valid()Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
