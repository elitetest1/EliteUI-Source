.class public final Landroid/hardware/display/VirtualDisplayConfig;
.super Ljava/lang/Object;
.source "VirtualDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/VirtualDisplayConfig$Builder;,
        Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;,
        Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/VirtualDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

.field private final blacklist mDefaultBrightness:F

.field private final blacklist mDensityDpi:I

.field private final blacklist mDimBrightness:F

.field private final blacklist mDisplayCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayCutout:Landroid/view/DisplayCutout;

.field private final blacklist mDisplayIdToMirror:I

.field private final blacklist mFlags:I

.field private final blacklist mHeight:I

.field private final blacklist mIgnoreActivitySizeRestrictions:Z

.field private final blacklist mIsHomeSupported:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mRequestedRefreshRate:F

.field private final blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mUniqueId:Ljava/lang/String;

.field private final blacklist mWidth:I

.field private final blacklist mWindowManagerMirroringEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$1;

    invoke-direct {v0}, Landroid/hardware/display/VirtualDisplayConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IBrightnessListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IBrightnessListener;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/VirtualDisplayConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZLandroid/view/DisplayCutout;ZFFLandroid/hardware/display/IBrightnessListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/view/Surface;",
            "Ljava/lang/String;",
            "IZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;FZ",
            "Landroid/view/DisplayCutout;",
            "ZFF",
            "Landroid/hardware/display/IBrightnessListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    iput p3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    iput p4, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    iput p5, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    iput-object p6, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iput-object p7, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iput p8, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    iput-boolean p9, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    iput-object p10, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    iput p11, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    iput-boolean p12, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    iput-object p13, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    iput-boolean p14, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    iput p15, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    move/from16 p1, p16

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZLandroid/view/DisplayCutout;ZFFLandroid/hardware/display/IBrightnessListener;Landroid/hardware/display/VirtualDisplayConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZLandroid/view/DisplayCutout;ZFFLandroid/hardware/display/IBrightnessListener;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/hardware/display/VirtualDisplayConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/hardware/display/VirtualDisplayConfig;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    iget-boolean v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    iget-boolean v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    iget-boolean v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-object p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    iget-object p1, p1, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getBrightnessListener()Landroid/hardware/display/IBrightnessListener;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    return-object p0
.end method

.method public whitelist getDefaultBrightness()F
    .locals 0

    iget p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    return p0
.end method

.method public whitelist getDensityDpi()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    return p0
.end method

.method public whitelist getDimBrightness()F
    .locals 0

    iget p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    return p0
.end method

.method public whitelist getDisplayCategories()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object p0
.end method

.method public blacklist getDisplayIdToMirror()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    return p0
.end method

.method public whitelist getFlags()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    return p0
.end method

.method public whitelist getHeight()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    return p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getRequestedRefreshRate()F
    .locals 0

    iget p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    return p0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public blacklist getUniqueId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getWidth()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    iget v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iget-object v7, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iget v8, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v9, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    iget v11, v0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-boolean v12, v0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v13, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-boolean v14, v0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v15, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v16, v1

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v0, v0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v0

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isHomeSupported()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    return p0
.end method

.method public whitelist isIgnoreActivitySizeRestrictions()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->vdmForceAppUniversalResizableApi()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isWindowManagerMirroringEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VirtualDisplayConfig( mName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDensityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mUniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDisplayIdToMirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWindowManagerMirroringEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDisplayCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRequestedRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mIsHomeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDisplayCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIgnoreActivitySizeRestrictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDefaultBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mDimBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/hardware/display/IBrightnessListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
