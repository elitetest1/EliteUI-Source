.class public final Landroid/renderscript/ScriptIntrinsicLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicLUT.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mCache:[B

.field private greylist-max-o mDirty:Z

.field private final greylist-max-o mMatrix:Landroid/renderscript/Matrix4f;

.field private greylist-max-o mTables:Landroid/renderscript/Allocation;


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroid/renderscript/Matrix4f;

    const/16 p1, 0x400

    new-array p2, p1, [B

    iput-object p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    invoke-static {p3}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/16 p3, 0x100

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v0, p2

    aput-byte v0, p3, p2

    add-int/lit16 v1, p2, 0x100

    aput-byte v0, p3, v1

    add-int/lit16 v1, p2, 0x200

    aput-byte v0, p3, v1

    add-int/lit16 v1, p2, 0x300

    aput-byte v0, p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicLUT;
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    new-instance p1, Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-direct {p1, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicLUT;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object p1
.end method

.method private greylist-max-o validate(II)V
    .locals 0

    if-ltz p1, :cond_1

    const/16 p0, 0xff

    if-gt p1, p0, :cond_1

    if-ltz p2, :cond_0

    if-gt p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Value out of range (0-255)."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Index out of range (0-255)."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    invoke-super {p0}, Landroid/renderscript/ScriptIntrinsic;->destroy()V

    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    iget-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked([B)V

    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public whitelist getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicLUT;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setAlpha(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x300

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public whitelist setBlue(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x200

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public whitelist setGreen(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x100

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public whitelist setRed(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method
