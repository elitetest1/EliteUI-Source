.class public final Landroid/hardware/display/DisplayTopology$TreeNode;
.super Ljava/lang/Object;
.source "DisplayTopology.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayTopology$TreeNode$Position;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist POSITION_BOTTOM:I = 0x3

.field public static final blacklist POSITION_LEFT:I = 0x0

.field public static final blacklist POSITION_RIGHT:I = 0x2

.field public static final blacklist POSITION_TOP:I = 0x1


# instance fields
.field private final blacklist mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayId:I

.field private blacklist mHeight:F

.field private blacklist mOffset:F

.field private blacklist mPosition:I

.field private blacklist mWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;F)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;F)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode$1;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$TreeNode$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IFFIF)V
    .locals 7

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIFLjava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(IFFIFLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFIF",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    iput p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    iput p3, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    iput p4, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    iput p5, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    iget-object p0, v0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    sget-object v0, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public static blacklist positionToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "bottom"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "right"

    return-object p0

    :cond_2
    const-string p0, "top"

    return-object p0

    :cond_3
    const-string p0, "left"

    return-object p0
.end method


# virtual methods
.method public blacklist addChild(Landroid/hardware/display/DisplayTopology$TreeNode;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist copy()Landroid/hardware/display/DisplayTopology$TreeNode;
    .locals 6

    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    iget v2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    iget v3, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    iget v4, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    iget v5, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v2, v0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->copy()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public blacklist getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDisplayId()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    return p0
.end method

.method public blacklist getHeight()F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    return p0
.end method

.method public blacklist getOffset()F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    return p0
.end method

.method public blacklist getPosition()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    return p0
.end method

.method public blacklist getWidth()F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Display {id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->positionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
