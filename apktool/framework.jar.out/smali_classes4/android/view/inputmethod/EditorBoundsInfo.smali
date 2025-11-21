.class public final Landroid/view/inputmethod/EditorBoundsInfo;
.super Ljava/lang/Object;
.source "EditorBoundsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/EditorBoundsInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/EditorBoundsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEditorBounds:Landroid/graphics/RectF;

.field private final blacklist mHandwritingBounds:Landroid/graphics/RectF;

.field private final blacklist mHashCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/EditorBoundsInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorBoundsInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/EditorBoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iput-object p1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/EditorBoundsInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/EditorBoundsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->-$$Nest$fgetmEditorBounds(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-static {p1}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->-$$Nest$fgetmHandwritingBounds(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/EditorBoundsInfo;-><init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/inputmethod/EditorBoundsInfo;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/inputmethod/EditorBoundsInfo;

    iget-object v1, p1, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    iget-object p0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public whitelist getEditorBounds()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public whitelist getHandwritingBounds()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EditorBoundsInfo{mEditorBounds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mHandwritingBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
