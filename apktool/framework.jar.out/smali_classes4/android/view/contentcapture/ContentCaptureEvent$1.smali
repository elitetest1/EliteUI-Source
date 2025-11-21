.class Landroid/view/contentcapture/ContentCaptureEvent$1;
.super Ljava/lang/Object;
.source "ContentCaptureEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/contentcapture/ContentCaptureEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    new-instance v3, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-direct {v3, p0, v0, v1, v2}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(IIJ)V

    const-class p0, Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/autofill/AutofillId;

    if-eqz p0, :cond_0

    invoke-virtual {v3, p0}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_0
    sget-object p0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v3, p0}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillIds(Ljava/util/ArrayList;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_1
    invoke-static {p1}, Landroid/view/contentcapture/ViewNode;->readFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ViewNode;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v3, p0}, Landroid/view/contentcapture/ContentCaptureEvent;->setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/view/contentcapture/ContentCaptureEvent;->setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 p0, -0x1

    if-eq v0, p0, :cond_3

    const/4 v2, -0x2

    if-ne v0, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_4
    if-eq v0, p0, :cond_5

    const/4 p0, 0x6

    if-ne v0, p0, :cond_6

    :cond_5
    const-class p0, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {p1, v1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v3, p0}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_6
    const/16 p0, 0x9

    if-ne v0, p0, :cond_7

    const-class p0, Landroid/graphics/Insets;

    invoke-virtual {p1, v1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Insets;

    invoke-virtual {v3, p0}, Landroid/view/contentcapture/ContentCaptureEvent;->setInsets(Landroid/graphics/Insets;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_7
    const/16 p0, 0xa

    if-ne v0, p0, :cond_8

    const-class p0, Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroid/view/contentcapture/ContentCaptureEvent;->setBounds(Landroid/graphics/Rect;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_8
    const/4 p0, 0x3

    if-ne v0, p0, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, p0, v0}, Landroid/view/contentcapture/ContentCaptureEvent;->setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureEvent;->-$$Nest$mrestoreComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v3, p0, p1}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureEvent;->-$$Nest$mrestoreSelectionSpans(Landroid/view/contentcapture/ContentCaptureEvent;)V

    :cond_9
    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 0

    new-array p0, p1, [Landroid/view/contentcapture/ContentCaptureEvent;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureEvent$1;->newArray(I)[Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object p0

    return-object p0
.end method
