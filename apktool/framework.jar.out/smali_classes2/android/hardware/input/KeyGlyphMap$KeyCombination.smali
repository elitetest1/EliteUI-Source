.class public Landroid/hardware/input/KeyGlyphMap$KeyCombination;
.super Ljava/lang/Object;
.source "KeyGlyphMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyGlyphMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyCombination"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyGlyphMap$KeyCombination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mKeycode:I

.field private final blacklist mModifierState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/KeyGlyphMap$KeyCombination$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyGlyphMap$KeyCombination$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    iput p2, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/input/KeyGlyphMap$KeyCombination;-><init>(II)V

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
    instance-of v1, p1, Landroid/hardware/input/KeyGlyphMap$KeyCombination;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/hardware/input/KeyGlyphMap$KeyCombination;

    iget v1, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    iget v3, p1, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    iget p1, p1, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public blacklist getKeycode()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    return p0
.end method

.method public blacklist getModifierState()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
