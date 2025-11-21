.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static final greylist FIRST_AUDIO_FILE_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist LAST_AUDIO_FILE_TYPE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    const/16 v0, 0x3009

    const-string v1, "audio/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3008

    const-string v2, "audio/x-wav"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb901

    const-string v2, "audio/x-ms-wma"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb902

    const-string v2, "audio/ogg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb903

    const-string v2, "audio/aac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb906

    const-string v2, "audio/flac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3007

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb983

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x300b

    const-string v1, "video/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb982

    const-string v1, "video/mp4"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v0, "video/3gpp"

    const v1, 0xb984

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v0, "video/3gpp2"

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x300a

    const-string v1, "video/avi"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb981

    const-string v1, "video/x-ms-wmv"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x300c

    const-string v1, "video/x-ms-asf"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3801

    const-string v2, "image/jpeg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3807

    const-string v2, "image/gif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x380b

    const-string v2, "image/png"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3804

    const-string v2, "image/x-ms-bmp"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3812

    const-string v2, "image/heif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3811

    const-string v2, "image/x-adobe-dng"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x380d

    const-string v2, "image/tiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-canon-cr2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-nikon-nrw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-sony-arw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-panasonic-rw2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-olympus-orf"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-pentax-pef"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-samsung-srw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3802

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v2, "image/x-nikon-nef"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x380f

    const-string v2, "image/jp2"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3810

    const-string v2, "image/jpx"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba11

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba14

    const-string v2, "audio/x-scpls"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba10

    const-string v2, "application/vnd.ms-wpl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba13

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3004

    const-string v1, "text/plain"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3005

    const-string v1, "text/html"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba82

    const-string v1, "text/xml"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v0, "application/msword"

    const v1, 0xba83

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v0, "application/vnd.ms-excel"

    const v1, 0xba85

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v0, "application/vnd.ms-powerpoint"

    const v1, 0xba86

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addFileType(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static greylist addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static greylist getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static greylist getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Landroid/media/MediaFile;->getFormatCodeForFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist getFormatCodeForFile(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist getFormatCodeForMimeType(Ljava/lang/String;)I
    .locals 3

    const/16 v0, 0x3000

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    const-string v1, "audio/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const p0, 0xb900

    return p0

    :cond_3
    const-string v1, "video/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p0, 0xb980

    return p0

    :cond_4
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x3800

    return p0

    :cond_5
    return v0
.end method

.method public static blacklist getMimeType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/octet-stream"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/media/MediaFile;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method public static greylist-max-o getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method public static greylist isAudioFileType(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isAudioMimeType(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isDocumentMimeType(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "text/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "application/vnd.oasis.opendocument.database"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x37

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "application/vnd.ms-excel.addin.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x36

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x35

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x34

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "application/vnd.stardivision.writer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x33

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x32

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x31

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x30

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x2f

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "application/vnd.sun.xml.impress"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x2e

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "application/vnd.ms-word.template.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x2d

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x2c

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x2b

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "application/msword"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x2a

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "application/vnd.stardivision.impress-packed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x29

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x28

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "application/vnd.stardivision.impress"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "application/vnd.stardivision.writer-global"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "application/vnd.ms-powerpoint.template.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "application/vnd.oasis.opendocument.presentation-template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "application/vnd.ms-excel"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "application/vnd.sun.xml.impress.template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "application/vnd.sun.xml.writer.global"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "application/x-mspublisher"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "application/vnd.sun.xml.math"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "application/vnd.sun.xml.draw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "application/vnd.sun.xml.calc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "application/vnd.ms-excel.template.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "application/vnd.oasis.opendocument.formula"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "application/vnd.sun.xml.draw.template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "application/rtf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "application/pdf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "application/vnd.ms-word.document.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "application/vnd.sun.xml.calc.template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "application/vnd.sun.xml.writer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "application/vnd.ms-excel.sheet.macroenabled.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2f
    const-string v1, "application/vnd.oasis.opendocument.text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "application/vnd.sun.xml.writer.template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_0

    :cond_32
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_31
    const-string v1, "application/vnd.stardivision.chart"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_0

    :cond_33
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_32
    const-string v1, "application/vnd.oasis.opendocument.chart"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_0

    :cond_34
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_33
    const-string v1, "application/epub+zip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_0

    :cond_35
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_34
    const-string v1, "application/vnd.stardivision.math"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_0

    :cond_36
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_35
    const-string v1, "application/vnd.stardivision.mail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_0

    :cond_37
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_36
    const-string v1, "application/vnd.stardivision.draw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_0

    :cond_38
    move v3, v2

    goto :goto_0

    :sswitch_37
    const-string v1, "application/vnd.stardivision.calc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_0

    :cond_39
    move v3, v0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v0

    :pswitch_0
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f44465d -> :sswitch_37
        -0x7f43936e -> :sswitch_36
        -0x7f3fbafb -> :sswitch_35
        -0x7f3fb9aa -> :sswitch_34
        -0x77b8a693 -> :sswitch_33
        -0x6a428d87 -> :sswitch_32
        -0x69417db0 -> :sswitch_31
        -0x68255665 -> :sswitch_30
        -0x667e94ce -> :sswitch_2f
        -0x62888ad2 -> :sswitch_2e
        -0x610e9853 -> :sswitch_2d
        -0x5ed1e487 -> :sswitch_2c
        -0x59c3e1a9 -> :sswitch_2b
        -0x4e7ea34b -> :sswitch_2a
        -0x4d189f3b -> :sswitch_29
        -0x4a68144d -> :sswitch_28
        -0x4a680adb -> :sswitch_27
        -0x4151d343 -> :sswitch_26
        -0x3ffe58cb -> :sswitch_25
        -0x3fe2a28f -> :sswitch_24
        -0x3ea35d2d -> :sswitch_23
        -0x3d99ba96 -> :sswitch_22
        -0x38434ebf -> :sswitch_21
        -0x3464229d -> :sswitch_20
        -0x2e7d3bf1 -> :sswitch_1f
        -0x2e7c8902 -> :sswitch_1e
        -0x2e78af3e -> :sswitch_1d
        -0x28553dc7 -> :sswitch_1c
        -0x1cb6d53e -> :sswitch_1b
        -0x1c904afc -> :sswitch_1a
        -0x17a6095d -> :sswitch_19
        -0x15d566cf -> :sswitch_18
        -0x11ed9627 -> :sswitch_17
        -0x11654d98 -> :sswitch_16
        -0x901206b -> :sswitch_15
        -0x6850aa0 -> :sswitch_14
        0x3e26123 -> :sswitch_13
        0x198f4610 -> :sswitch_12
        0x22098aaf -> :sswitch_11
        0x27e80391 -> :sswitch_10
        0x2967ba15 -> :sswitch_f
        0x2e45be34 -> :sswitch_e
        0x35ebd34f -> :sswitch_d
        0x3f3a9e32 -> :sswitch_c
        0x5218db97 -> :sswitch_b
        0x5278be24 -> :sswitch_a
        0x527dd1a5 -> :sswitch_9
        0x55a6501f -> :sswitch_8
        0x57208d5d -> :sswitch_7
        0x5e059df3 -> :sswitch_6
        0x61f85627 -> :sswitch_5
        0x63c34841 -> :sswitch_4
        0x68571d43 -> :sswitch_3
        0x76d7a0a2 -> :sswitch_2
        0x7cd0cb55 -> :sswitch_1
        0x7e37ad00 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist isDrmFileType(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isDrmMimeType(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/x-android-drm-fl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isExifMimeType(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static greylist isImageFileType(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isImageMimeType(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static greylist isPlayListFileType(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isPlayListMimeType(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "application/vnd.ms-wpl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "audio/x-mpegurl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "audio/mpegurl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "application/vnd.apple.mpegurl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "application/x-mpegurl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_0

    :sswitch_5
    const-string v0, "audio/x-scpls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x45784127 -> :sswitch_5
        -0x3a5bd08a -> :sswitch_4
        -0x251f4d8b -> :sswitch_3
        -0x19cb7f6f -> :sswitch_2
        0xfbfd67c -> :sswitch_1
        0x6f9869ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist isVideoFileType(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isVideoMimeType(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "application/octet-stream"

    return-object p0
.end method
