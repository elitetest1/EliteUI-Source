.class Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;
.super Lcom/samsung/android/allshare/Item;
.source "Item.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderGeneratedItem"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlbumTitle:Ljava/lang/String;

.field private blacklist mArtist:Ljava/lang/String;

.field private blacklist mCaptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field private blacklist mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

.field private blacklist mDate:Ljava/util/Date;

.field private blacklist mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field private blacklist mDuration:J

.field private blacklist mGenre:Ljava/lang/String;

.field private blacklist mItemFilepath:Ljava/lang/String;

.field private blacklist mItemMimetype:Ljava/lang/String;

.field private blacklist mItemTitle:Ljava/lang/String;

.field private blacklist mSubtitlePath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/Item-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object p8, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object p5, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object p8, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object p5, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object p9, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    move-wide p1, p13

    iput-wide p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLcom/samsung/android/allshare/Item-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    iput-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object p1, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object p4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;Lcom/samsung/android/allshare/Item-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-static {v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    instance-of v2, p1, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public blacklist getBitrate()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_FILEPATH"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->enumToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_ITEM_SUBTITLE_PATH"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_PARCELABLE_ITEM_CAPTION_LIST"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$ContentAttributeType;->enumToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_CONTENT_ATTRIBUTE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_ITEM_ARTIST"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_ITEM_ALBUM_TITLE"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_ITEM_GENRE"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "BUNDLE_DATE_ITEM_DATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "BUNDLE_LONG_ITEM_DURATION"

    iget-wide v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public blacklist getCaptionList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/Item$1;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->WEB:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object p0
.end method

.method public whitelist getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public whitelist getFileSize()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 0

    sget-object p0, Lcom/samsung/android/allshare/Item$SeekMode;->BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object p0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

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
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isRootFolder()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->enumToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
