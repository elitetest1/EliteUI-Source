.class public final Landroid/webkit/PluginData;
.super Ljava/lang/Object;
.source "PluginData.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mContentLength:J

.field private greylist-max-o mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStatusCode:I

.field private greylist-max-o mStream:Ljava/io/InputStream;


# direct methods
.method public constructor greylist <init>(Ljava/io/InputStream;JLjava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/PluginData;->mStream:Ljava/io/InputStream;

    iput-wide p2, p0, Landroid/webkit/PluginData;->mContentLength:J

    iput-object p4, p0, Landroid/webkit/PluginData;->mHeaders:Ljava/util/Map;

    iput p5, p0, Landroid/webkit/PluginData;->mStatusCode:I

    return-void
.end method


# virtual methods
.method public greylist-max-r getContentLength()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/webkit/PluginData;->mContentLength:J

    return-wide v0
.end method

.method public greylist-max-r getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/webkit/PluginData;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public greylist-max-r getInputStream()Ljava/io/InputStream;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/webkit/PluginData;->mStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public greylist-max-r getStatusCode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroid/webkit/PluginData;->mStatusCode:I

    return p0
.end method
