.class public final Landroid/renderscript/ScriptIntrinsicConvolve3x3;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve3x3.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mInput:Landroid/renderscript/Allocation;

.field private blacklist mLocked:Z

.field private blacklist mScenario:Lcom/samsung/epic/Request;

.field private final greylist-max-o mValues:[F


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mScenario:Lcom/samsung/epic/Request;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mLocked:Z

    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported element type."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v1

    new-instance p1, Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-direct {p1, v1, v2, p0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;-><init>(JLandroid/renderscript/RenderScript;)V

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    new-instance p0, Lcom/samsung/epic/Request;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/epic/Request;-><init>(I)V

    iput-object p0, p1, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mScenario:Lcom/samsung/epic/Request;

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public whitelist forEach(Landroid/renderscript/Allocation;)V
    .locals 2

    iget-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mLocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mScenario:Lcom/samsung/epic/Request;

    invoke-virtual {v0}, Lcom/samsung/epic/Request;->acquire_lock()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mLocked:Z

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Landroid/renderscript/Allocation;

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public whitelist getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setCoefficients([F)V
    .locals 5

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v4, p1, v2

    aput v4, v3, v2

    invoke-virtual {v0, v4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public whitelist setInput(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mInput:Landroid/renderscript/Allocation;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method
