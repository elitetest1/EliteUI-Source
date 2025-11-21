.class public final Landroid/graphics/BlendModeColorFilter;
.super Landroid/graphics/ColorFilter;
.source "BlendModeColorFilter.java"


# instance fields
.field final blacklist mColor:I

.field private final blacklist mMode:Landroid/graphics/BlendMode;


# direct methods
.method public constructor whitelist <init>(ILandroid/graphics/BlendMode;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    iput p1, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    iput-object p2, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    return-void
.end method

.method private static native blacklist native_CreateBlendModeFilter(II)J
.end method


# virtual methods
.method blacklist createNativeInstance()J
    .locals 2

    iget v0, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    iget-object p0, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, p0}, Landroid/graphics/BlendModeColorFilter;->native_CreateBlendModeFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

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
    check-cast p1, Landroid/graphics/BlendModeColorFilter;

    iget-object v2, p1, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    iget-object v3, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    if-ne v2, v3, :cond_2

    iget p1, p1, Landroid/graphics/BlendModeColorFilter;->mColor:I

    iget p0, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getColor()I
    .locals 0

    iget p0, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    return p0
.end method

.method public whitelist getMode()Landroid/graphics/BlendMode;
    .locals 0

    iget-object p0, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0}, Landroid/graphics/BlendMode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    add-int/2addr v0, p0

    return v0
.end method
