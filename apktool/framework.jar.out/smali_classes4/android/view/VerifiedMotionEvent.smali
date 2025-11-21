.class public final Landroid/view/VerifiedMotionEvent;
.super Landroid/view/VerifiedInputEvent;
.source "VerifiedMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedMotionEvent$MotionEventAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedMotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedMotionEvent"


# instance fields
.field private blacklist mActionMasked:I

.field private blacklist mButtonState:I

.field private blacklist mDownTimeNanos:J

.field private blacklist mFlags:I

.field private blacklist mMetaState:I

.field private blacklist mRawX:F

.field private blacklist mRawY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/VerifiedMotionEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedMotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJIIFFIJIII)V
    .locals 8

    move/from16 v0, p8

    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    iput p6, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    iput p7, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iput v0, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    const-class p1, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    move-wide/from16 p1, p9

    iput-wide p1, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    move/from16 p1, p11

    iput p1, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    move/from16 p1, p12

    iput p1, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    move/from16 p1, p13

    iput p1, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    iput v1, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iput v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    const-class v0, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-wide v3, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    iput v5, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    iput v6, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    iput p1, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Landroid/view/VerifiedMotionEvent;

    invoke-super {p0, p1}, Landroid/view/VerifiedInputEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mRawX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mRawY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    iget-wide v4, p1, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mFlags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    iget p1, p1, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getActionMasked()I
    .locals 0

    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    return p0
.end method

.method public whitelist getButtonState()I
    .locals 0

    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return p0
.end method

.method public whitelist getDownTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFlag(I)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x800

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFlags()I
    .locals 0

    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    return p0
.end method

.method public whitelist getMetaState()I
    .locals 0

    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    return p0
.end method

.method public whitelist getRawX()F
    .locals 0

    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    return p0
.end method

.method public whitelist getRawY()F
    .locals 0

    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    invoke-super {p0}, Landroid/view/VerifiedInputEvent;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
