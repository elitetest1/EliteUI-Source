.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    return-object p0

    :cond_4
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>()V

    return-object p0

    :cond_5
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    return-object p0
.end method

.method public static blacklist createClipBoardData(Landroid/os/Parcel;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
