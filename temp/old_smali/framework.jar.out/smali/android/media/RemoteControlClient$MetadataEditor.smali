.class public Landroid/media/RemoteControlClient$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# static fields
.field public static final BITMAP_KEY_ARTWORK:I = 0x64

.field public static final METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method private constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "RemoteControlClient"

    const-string v1, "Can\'t apply a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #setter for: Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->access$102(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$100(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;

    move-result-object v0

    const v2, 0x1fffffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$200(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$200(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$200(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #setter for: Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->access$202(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    iget-boolean v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    #calls: Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v0, v2, v3, v4}, Landroid/media/RemoteControlClient;->access$300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    const/4 v2, 0x0

    #calls: Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->access$400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    #calls: Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v0, v2, v3, v4}, Landroid/media/RemoteControlClient;->access$500(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/media/MediaMetadataEditor;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 1
    .parameter "key"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic putLong(IJ)Landroid/media/MediaMetadataEditor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaMetadataEditor;->putLong(IJ)Landroid/media/MediaMetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
