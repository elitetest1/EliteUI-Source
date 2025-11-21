.class public final Landroid/hardware/display/VirtualDisplayConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualDisplayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/VirtualDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

.field private blacklist mDefaultBrightness:F

.field private final blacklist mDensityDpi:I

.field private blacklist mDimBrightness:F

.field private blacklist mDisplayCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisplayCutout:Landroid/view/DisplayCutout;

.field private blacklist mDisplayIdToMirror:I

.field private blacklist mFlags:I

.field private final blacklist mHeight:I

.field private blacklist mIgnoreActivitySizeRestrictions:Z

.field private blacklist mIsHomeSupported:Z

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mRequestedRefreshRate:F

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mUniqueId:Ljava/lang/String;

.field private final blacklist mWidth:I

.field private blacklist mWindowManagerMirroringEnabled:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroringEnabled:Z

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mRequestedRefreshRate:F

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIsHomeSupported:Z

    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIgnoreActivitySizeRestrictions:Z

    iput v2, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDefaultBrightness:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    if-eqz p1, :cond_3

    if-lez p2, :cond_2

    if-lez p3, :cond_1

    if-lez p4, :cond_0

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    iput p3, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    iput p4, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Virtual display density must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Virtual display height must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Virtual display width must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Virtual display name is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist isValidBrightness(F)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist addDisplayCategory(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/hardware/display/VirtualDisplayConfig;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    invoke-direct {v0, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->isValidBrightness(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    iget v2, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDefaultBrightness:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dim brightness must not be greater than the default brightness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v2, Landroid/hardware/display/VirtualDisplayConfig;

    iget-object v3, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    iget v4, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    iget v5, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    iget v6, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    iget v7, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    iget-object v8, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    iget-object v9, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    iget v10, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    iget-boolean v11, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroringEnabled:Z

    iget-object v12, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    iget v13, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mRequestedRefreshRate:F

    iget-boolean v14, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIsHomeSupported:Z

    iget-object v15, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-boolean v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIgnoreActivitySizeRestrictions:Z

    move/from16 v16, v1

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDefaultBrightness:F

    move/from16 v17, v1

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    iget-object v0, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    const/16 v20, 0x0

    move-object/from16 v19, v0

    move/from16 v18, v1

    invoke-direct/range {v2 .. v20}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZLandroid/view/DisplayCutout;ZFFLandroid/hardware/display/IBrightnessListener;Landroid/hardware/display/VirtualDisplayConfig-IA;)V

    return-object v2
.end method

.method public whitelist setBrightnessListener(Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 1

    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;

    invoke-direct {v0, p1, p2}, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;)V

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    return-object p0
.end method

.method public whitelist setDefaultBrightness(F)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->isValidBrightness(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDefaultBrightness:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Virtual display default brightness must be in range [0.0, 1.0]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setDimBrightness(F)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->isValidBrightness(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Virtual display dim brightness must be in range [0.0, 1.0]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setDisplayCategories(Ljava/util/Set;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/display/VirtualDisplayConfig$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public whitelist setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object p0
.end method

.method public blacklist setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    return-object p0
.end method

.method public whitelist setHomeSupported(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIsHomeSupported:Z

    return-object p0
.end method

.method public whitelist setIgnoreActivitySizeRestrictions(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIgnoreActivitySizeRestrictions:Z

    return-object p0
.end method

.method public whitelist setRequestedRefreshRate(F)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mRequestedRefreshRate:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Virtual display requested refresh rate must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public blacklist setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setWindowManagerMirroringEnabled(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroringEnabled:Z

    return-object p0
.end method
