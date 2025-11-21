.class public Landroid/renderscript/Mesh;
.super Landroid/renderscript/BaseObj;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$Primitive;,
        Landroid/renderscript/Mesh$TriangleMeshBuilder;,
        Landroid/renderscript/Mesh$AllocationBuilder;,
        Landroid/renderscript/Mesh$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mIndexBuffers:[Landroid/renderscript/Allocation;

.field greylist-max-o mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field greylist-max-o mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iget-object p0, p0, Landroid/renderscript/Mesh;->guard:Ldalvik/system/CloseGuard;

    const-string p1, "destroy"

    invoke-virtual {p0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist-max-o getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist-max-o getPrimitiveCount()I
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method public greylist getVertexAllocation(I)Landroid/renderscript/Allocation;
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist-max-o getVertexAllocationCount()I
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method greylist-max-o updateFromNative()V
    .locals 17

    move-object/from16 v0, p0

    invoke-super {v0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    iget-object v1, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(J)I

    move-result v1

    iget-object v2, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(J)I

    move-result v10

    new-array v2, v1, [J

    new-array v8, v10, [J

    new-array v9, v10, [I

    iget-object v3, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v4}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/renderscript/RenderScript;->nMeshGetVertices(J[JI)V

    iget-object v5, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual/range {v5 .. v10}, Landroid/renderscript/RenderScript;->nMeshGetIndices(J[J[II)V

    new-array v3, v1, [Landroid/renderscript/Allocation;

    iput-object v3, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-array v3, v10, [Landroid/renderscript/Allocation;

    iput-object v3, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-array v3, v10, [Landroid/renderscript/Mesh$Primitive;

    iput-object v3, v0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v1, :cond_1

    aget-wide v11, v2, v4

    cmp-long v5, v11, v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-instance v11, Landroid/renderscript/Allocation;

    aget-wide v12, v2, v4

    iget-object v14, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-direct/range {v11 .. v16}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v11, v5, v4

    iget-object v5, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->updateFromNative()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v10, :cond_3

    aget-wide v1, v8, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-instance v11, Landroid/renderscript/Allocation;

    aget-wide v12, v8, v3

    iget-object v14, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-direct/range {v11 .. v16}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v11, v1, v3

    iget-object v1, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->updateFromNative()V

    :cond_2
    iget-object v1, v0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    move-result-object v2

    aget v4, v9, v3

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
