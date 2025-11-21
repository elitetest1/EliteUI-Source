.class public final Landroid/hardware/input/KeyboardLayoutSelectionResult;
.super Ljava/lang/Object;
.source "KeyboardLayoutSelectionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayoutSelectionResult$LayoutSelectionCriteria;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyboardLayoutSelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_DEFAULT:I = 0x4

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_DEVICE:I = 0x2

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_UNSPECIFIED:I = 0x0

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_USER:I = 0x1

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD:I = 0x3


# instance fields
.field private final blacklist mLayoutDescriptor:Ljava/lang/String;

.field private final blacklist mSelectionCriteria:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    new-instance v0, Landroid/hardware/input/KeyboardLayoutSelectionResult$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayoutSelectionResult$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    iput p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selectionCriteria was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but must be one of: LAYOUT_SELECTION_CRITERIA_UNSPECIFIED(0), LAYOUT_SELECTION_CRITERIA_USER(1), LAYOUT_SELECTION_CRITERIA_DEVICE(2), LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD(3), LAYOUT_SELECTION_CRITERIA_DEFAULT(4)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-eq p2, p0, :cond_1

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "selectionCriteria was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but must be one of: LAYOUT_SELECTION_CRITERIA_UNSPECIFIED(0), LAYOUT_SELECTION_CRITERIA_USER(1), LAYOUT_SELECTION_CRITERIA_DEVICE(2), LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD(3), LAYOUT_SELECTION_CRITERIA_DEFAULT(4)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist layoutSelectionCriteriaToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LAYOUT_SELECTION_CRITERIA_DEFAULT"

    return-object p0

    :cond_1
    const-string p0, "LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD"

    return-object p0

    :cond_2
    const-string p0, "LAYOUT_SELECTION_CRITERIA_DEVICE"

    return-object p0

    :cond_3
    const-string p0, "LAYOUT_SELECTION_CRITERIA_USER"

    return-object p0

    :cond_4
    const-string p0, "LAYOUT_SELECTION_CRITERIA_UNSPECIFIED"

    return-object p0
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
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    iget p1, p1, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getLayoutDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSelectionCriteria()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyboardLayoutSelectionResult { layoutDescriptor = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectionCriteria = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-static {p0}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->layoutSelectionCriteriaToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget p0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
