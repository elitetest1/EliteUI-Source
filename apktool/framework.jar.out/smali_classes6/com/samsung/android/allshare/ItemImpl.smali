.class final Lcom/samsung/android/allshare/ItemImpl;
.super Lcom/samsung/android/allshare/Item;
.source "ItemImpl.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/ItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DATETIME_FORMAT:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss"

.field private static final blacklist DATETIME_FORMAT_WITH_MS:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss.sss"

.field private static final blacklist DATETIME_FORMAT_WITH_MS_OFFSET:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss.sss+hh:mm"

.field private static final blacklist DATETIME_FORMAT_WITH_MS_OFFSET_Z:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss.sssZ"

.field private static final blacklist DATETIME_FORMAT_WITH_OFFSET:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss+hh:mm"

.field private static final blacklist DATETIME_FORMAT_WITH_OFFSET_Z:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ssZ"

.field private static final blacklist DATETIME_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final blacklist DATETIME_PATTERN_WITH_MS:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field private static final blacklist DATETIME_PATTERN_WITH_MS_WITH_OFFSET:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

.field private static final blacklist DATETIME_PATTERN_WITH_MS_WITH_OFFSET_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final blacklist DATETIME_PATTERN_WITH_OFFSET:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

.field private static final blacklist DATETIME_PATTERN_WITH_OFFSET_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final blacklist DATE_FORMAT:Ljava/lang/String; = "CCYY-MM-DD"

.field private static final blacklist DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final blacklist TAG:Ljava/lang/String; = "ItemImpl"


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/allshare/ItemImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/ItemImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/ItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ItemImpl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/ItemImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist getFormatter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "yyyy-MM-dd"

    return-object p0

    :cond_0
    const/16 v0, 0x13

    if-ne p0, v0, :cond_1

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss"

    return-object p0

    :cond_1
    const/16 v0, 0x19

    if-ne p0, v0, :cond_2

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    return-object p0

    :cond_2
    const/16 v0, 0x14

    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    return-object p0

    :cond_3
    const/16 v0, 0x17

    if-ne p0, v0, :cond_4

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    return-object p0

    :cond_4
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_5

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    return-object p0

    :cond_5
    const/16 v0, 0x18

    if-ne p0, v0, :cond_6

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method static blacklist getItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/samsung/android/allshare/VideoItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/samsung/android/allshare/ImageItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/samsung/android/allshare/AudioItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getBitrate()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method blacklist getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getCaptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_PARCELABLE_ITEM_CAPTION_LIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_INT_ITEM_CHANNELNR"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->WEB:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_5
    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_6
    :goto_0
    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0
.end method

.method public whitelist getDuration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_ITEM_EXTENSION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getFileSize()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-string v0, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final blacklist getObjectID()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 0

    sget-object p0, Lcom/samsung/android/allshare/Item$SeekMode;->NONE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object p0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSubtitleList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    :goto_0
    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist isRootFolder()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
