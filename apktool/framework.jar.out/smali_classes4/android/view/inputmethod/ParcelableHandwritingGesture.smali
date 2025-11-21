.class public final Landroid/view/inputmethod/ParcelableHandwritingGesture;
.super Ljava/lang/Object;
.source "ParcelableHandwritingGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/ParcelableHandwritingGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mGesture:Landroid/view/inputmethod/HandwritingGesture;

.field private final blacklist mGestureAsParcelable:Landroid/os/Parcelable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcelInternal(ILandroid/os/Parcel;)Landroid/view/inputmethod/HandwritingGesture;
    .locals 0

    invoke-static {p0, p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->createFromParcelInternal(ILandroid/os/Parcel;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/ParcelableHandwritingGesture$1;

    invoke-direct {v0}, Landroid/view/inputmethod/ParcelableHandwritingGesture$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/HandwritingGesture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGesture:Landroid/view/inputmethod/HandwritingGesture;

    check-cast p1, Landroid/os/Parcelable;

    iput-object p1, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGestureAsParcelable:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/HandwritingGesture;Landroid/view/inputmethod/ParcelableHandwritingGesture-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;-><init>(Landroid/view/inputmethod/HandwritingGesture;)V

    return-void
.end method

.method private static blacklist createFromParcelInternal(ILandroid/os/Parcel;)Landroid/view/inputmethod/HandwritingGesture;
    .locals 2

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    sget-object p0, Landroid/view/inputmethod/InsertModeGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/HandwritingGesture;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p0, Landroid/view/inputmethod/DeleteRangeGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/HandwritingGesture;

    return-object p0

    :cond_2
    sget-object p0, Landroid/view/inputmethod/SelectRangeGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/HandwritingGesture;

    return-object p0

    :cond_3
    sget-object p0, Landroid/view/inputmethod/JoinOrSplitGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/HandwritingGesture;

    return-object p0

    :cond_4
    sget-object p0, Landroid/view/inputmethod/RemoveSpaceGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/HandwritingGesture;

    return-object p0

    :cond_5
    sget-object p0, Landroid/view/inputmethod/DeleteGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/HandwritingGesture;

    return-object p0

    :cond_6
    sget-object p0, Landroid/view/inputmethod/InsertGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/HandwritingGesture;

    return-object p0

    :cond_7
    sget-object p0, Landroid/view/inputmethod/SelectGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/HandwritingGesture;

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GESTURE_TYPE_NONE is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist of(Landroid/view/inputmethod/HandwritingGesture;)Landroid/view/inputmethod/ParcelableHandwritingGesture;
    .locals 1

    new-instance v0, Landroid/view/inputmethod/ParcelableHandwritingGesture;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/ParcelableHandwritingGesture;-><init>(Landroid/view/inputmethod/HandwritingGesture;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGestureAsParcelable:Landroid/os/Parcelable;

    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0
.end method

.method public blacklist get()Landroid/view/inputmethod/HandwritingGesture;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGesture:Landroid/view/inputmethod/HandwritingGesture;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGesture:Landroid/view/inputmethod/HandwritingGesture;

    invoke-virtual {v0}, Landroid/view/inputmethod/HandwritingGesture;->getGestureType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGestureAsParcelable:Landroid/os/Parcelable;

    invoke-interface {p0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
