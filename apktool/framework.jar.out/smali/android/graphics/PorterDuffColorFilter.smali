.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "PorterDuffColorFilter.java"


# instance fields
.field private greylist-max-o mColor:I

.field private greylist-max-o mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor whitelist <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iput-object p2, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private static native blacklist native_CreateBlendModeFilter(II)J
.end method


# virtual methods
.method greylist-max-o createNativeInstance()J
    .locals 2

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget-object p0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget p0, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p0}, Landroid/graphics/PorterDuffColorFilter;->native_CreateBlendModeFilter(II)J

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
    check-cast p1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget v3, p1, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget p0, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iget-object p1, p1, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget p1, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public greylist getColor()I
    .locals 0

    iget p0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    return p0
.end method

.method public greylist-max-r getMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    add-int/2addr v0, p0

    return v0
.end method
