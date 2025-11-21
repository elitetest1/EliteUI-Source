.class public abstract Landroid/filterfw/io/GraphReader;
.super Ljava/lang/Object;
.source "GraphReader.java"


# instance fields
.field protected blacklist mReferences:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    return-void
.end method


# virtual methods
.method public blacklist addReference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs blacklist addReferencesByKeysAndValues([Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist addReferencesByMap(Landroid/filterfw/core/KeyValueMap;)V
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public blacklist readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [C

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v1, v2, v0}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not read specified resource file!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract blacklist readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation
.end method

.method public abstract blacklist readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation
.end method
