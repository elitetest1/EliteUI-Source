.class public final Landroid/window/TransitionInfo$AnimationOptions;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$AnimationOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_ANIMATION_RESOURCES_ID:I = -0x1


# instance fields
.field private blacklist mAnimations:I

.field private blacklist mBackgroundColor:I

.field private blacklist mChangeResId:I

.field private blacklist mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

.field private blacklist mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

.field private blacklist mEnterResId:I

.field private blacklist mExitResId:I

.field private blacklist mOverrideTaskTransition:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mThumbnail:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTransitionBounds:Landroid/graphics/Rect;

.field private blacklist mType:I

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$AnimationOptions$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$AnimationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    return-object v0
.end method

.method public static blacklist makeClipRevealAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public static blacklist makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist makeCrossProfileAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    return-object v0
.end method

.method public static blacklist makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    iput p1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    iput p2, v0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    iput p3, v0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    iput-boolean p4, v0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    return-object v0
.end method

.method public static blacklist makeCustomDisplayChangeAnimOptions(II)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    iput p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    iput p1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    return-object v0
.end method

.method public static blacklist makeScaleUpAnimOptions(IIIIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p4, v0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    return-object v0
.end method

.method public static blacklist makeSceneTransitionAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    return-object v0
.end method

.method public static blacklist makeThumbnailAnimOptions(Landroid/hardware/HardwareBuffer;IIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 1

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-direct {v0, p3}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    iget-object p3, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method private static blacklist typeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "FROM_STYLE"

    return-object p0

    :cond_1
    const-string p0, "OPEN_CROSS_PROFILE_APPS"

    return-object p0

    :cond_2
    const-string p0, "CLIP_REVEAL"

    return-object p0

    :cond_3
    const-string p0, "SCENE_TRANSITION"

    return-object p0

    :cond_4
    const-string p0, "THUMBNAIL_SCALE_DOWN"

    return-object p0

    :cond_5
    const-string p0, "THUMBNAIL_SCALE_UP"

    return-object p0

    :cond_6
    const-string p0, "SCALE_UP"

    return-object p0

    :cond_7
    const-string p0, "CUSTOM"

    return-object p0
.end method


# virtual methods
.method public blacklist addCustomActivityTransition(ZIII)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-direct {v0}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;-><init>()V

    if-eqz p1, :cond_1

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    :cond_2
    :goto_1
    invoke-virtual {v0, p2, p3, p4}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->addCustomActivityTransition(III)V

    return-void
.end method

.method public blacklist addOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAnimations()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    return p0
.end method

.method public blacklist getChangeResId()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    return p0
.end method

.method public blacklist getCustomActivityTransition(Z)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    return-object p0
.end method

.method public blacklist getEnterResId()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    return p0
.end method

.method public blacklist getExitResId()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    return p0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    return p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method public blacklist getTransitionBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    return p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    return p0
.end method

.method public blacklist setUserId(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    invoke-static {v1}, Landroid/window/TransitionInfo$AnimationOptions;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_0

    const-string v1, " overrideTask=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, " enterResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    if-eq v1, v2, :cond_3

    const-string v1, " changeResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    if-eq v1, v2, :cond_4

    const-string v1, " exitResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
