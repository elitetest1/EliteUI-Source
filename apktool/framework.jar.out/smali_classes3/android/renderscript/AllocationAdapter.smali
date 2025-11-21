.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "AllocationAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mWindow:Landroid/renderscript/Type;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V
    .locals 6

    iget-object v4, p4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v5, p4, Landroid/renderscript/Allocation;->mUsage:I

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    iput-object p4, v0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iput-object p5, v0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    return-void
.end method

.method public static whitelist create1D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/renderscript/Type;->createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 3

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Type;->createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;
    .locals 10

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p1, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    const-string v3, "Type cannot have dimension larger than the source allocation."

    if-gt v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v4

    if-gt v2, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {p0, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    invoke-virtual {p2, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationAdapterCreate(JJ)J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-eqz v0, :cond_2

    new-instance v4, Landroid/renderscript/AllocationAdapter;

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Landroid/renderscript/AllocationAdapter;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V

    return-object v4

    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "AllocationAdapter creation failed."

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {p0, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Adapters do not support window types with Mipmaps or Faces."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Element must match Allocation type."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Adapters cannot be nested."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o updateOffsets()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-le v3, v4, :cond_1

    iget-object v3, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v3, v3, v5

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v4, v4

    if-le v4, v5, :cond_2

    iget-object v4, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v4, v4, v5

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v5, v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_3

    iget-object v2, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v2, v2, v6

    :cond_3
    move v13, v1

    move/from16 v16, v2

    move v14, v3

    move v15, v4

    goto :goto_3

    :cond_4
    move v13, v2

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_3
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/AllocationAdapter;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget v8, v0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    iget v9, v0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    iget v10, v0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    iget v11, v0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    iget-object v0, v0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v12, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    invoke-virtual/range {v5 .. v16}, Landroid/renderscript/RenderScript;->nAllocationAdapterOffset(JIIIIIIIII)V

    return-void
.end method


# virtual methods
.method greylist-max-o initLOD(I)V
    .locals 6

    if-ltz p1, :cond_8

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v2, v2, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, p1, :cond_5

    if-ne v0, v5, :cond_1

    if-ne v1, v5, :cond_1

    if-eq v2, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to set lod ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") out of range."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-le v0, v5, :cond_2

    shr-int/lit8 v0, v0, 0x1

    :cond_2
    if-le v1, v5, :cond_3

    shr-int/lit8 v1, v1, 0x1

    :cond_3
    if-le v2, v5, :cond_4

    shr-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iput v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    iput v2, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    iget p1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget p1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    if-le p1, v5, :cond_6

    iget p1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    mul-int/2addr p1, v0

    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    :cond_6
    iget p1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    if-le p1, v5, :cond_7

    iget p1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    mul-int/2addr p1, v0

    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    :cond_7
    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    return-void

    :cond_8
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to set negative lod ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized whitelist resize(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Resize not allowed for Adapters."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public greylist-max-o setArray(II)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-le v0, p2, :cond_2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aput p2, v0, p1

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    return-void

    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set (arrayNum + window) which would be larger than dimension of allocation."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set arrayNum when the adapter includes arrayNum."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set arrayNum greater than dimension of allocation."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set arrayNum when the allocation type does not include arrayNum dim."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setFace(Landroid/renderscript/Type$CubemapFace;)V
    .locals 1

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    return-void

    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Cannot set null face."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set face when the adapter includes faces."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set Face when the allocation type does not include faces."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setLOD(I)V
    .locals 1

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    return-void

    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set LOD when the adapter includes mipmaps."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set LOD when the allocation type does not include mipmaps."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setX(I)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ge v0, v1, :cond_0

    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    return-void

    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set (X + window) which would be larger than dimension of allocation."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set X when the adapter includes X."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set X greater than dimension of allocation."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setY(I)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ge v0, v1, :cond_0

    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    return-void

    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set (Y + window) which would be larger than dimension of allocation."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set Y when the adapter includes Y."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set Y greater than dimension of allocation."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set Y when the allocation type does not include Y dim."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setZ(I)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-ge v0, v1, :cond_0

    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    return-void

    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set (Z + window) which would be larger than dimension of allocation."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set Z when the adapter includes Z."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set Z greater than dimension of allocation."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Cannot set Z when the allocation type does not include Z dim."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
