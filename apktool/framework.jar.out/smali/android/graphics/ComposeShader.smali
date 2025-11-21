.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"


# instance fields
.field private greylist-max-o mNativeInstanceShaderA:J

.field private greylist-max-o mNativeInstanceShaderB:J

.field private greylist-max-o mPorterDuffMode:I

.field greylist-max-o mShaderA:Landroid/graphics/Shader;

.field greylist-max-o mShaderB:Landroid/graphics/Shader;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    iput p3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Shader parameters must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/BlendMode;)V
    .locals 0

    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p3

    iget p3, p3, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget p3, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p3, Landroid/graphics/PorterDuffXfermode;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/graphics/PorterDuffXfermode;

    iget p3, p3, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p3

    iget p3, p3, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    return-void
.end method

.method private static native greylist-max-o nativeCreate(JJJI)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .locals 7

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v0, p3}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v0, p3}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    iget-object p3, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {p3}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    iget-object p3, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {p3}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v4

    iget v6, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/ComposeShader;->nativeCreate(JJJI)J

    move-result-wide p0

    return-wide p0
.end method

.method protected blacklist shouldDiscardNativeInstance(Z)Z
    .locals 4

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iget-wide p0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
