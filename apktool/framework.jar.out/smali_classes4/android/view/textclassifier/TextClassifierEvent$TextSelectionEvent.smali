.class public final Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
.super Landroid/view/textclassifier/TextClassifierEvent;
.source "TextClassifierEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextSelectionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mRelativeSuggestedWordEndIndex:I

.field final blacklist mRelativeSuggestedWordStartIndex:I

.field final blacklist mRelativeWordEndIndex:I

.field final blacklist mRelativeWordStartIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    iget v0, p1, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordStartIndex:I

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    iget v0, p1, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordEndIndex:I

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    iget v0, p1, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordStartIndex:I

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    iget p1, p1, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordEndIndex:I

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist getRelativeSuggestedWordEndIndex()I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    return p0
.end method

.method public whitelist getRelativeSuggestedWordStartIndex()I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    return p0
.end method

.method public whitelist getRelativeWordEndIndex()I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    return p0
.end method

.method public whitelist getRelativeWordStartIndex()I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    return p0
.end method

.method blacklist toString(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, ", getRelativeWordStartIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getRelativeWordEndIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getRelativeSuggestedWordStartIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getRelativeSuggestedWordEndIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/textclassifier/TextClassifierEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
