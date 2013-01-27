//
//  PhotoViewController.m
//  LilHermie
//
//  Created by S. Meisha Ray on 1/9/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import "PhotoViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface PhotoViewController ()

@end

@implementation PhotoViewController

- (IBAction)onClick:(id)sender
{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    if (pickerController !=nil)
    {
        pickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        
        pickerController.delegate = self;
        
        pickerController.allowsEditing = true;
        
        [self presentModalViewController:pickerController animated:true];
    }
}

- (IBAction)onCapture:(id)sender
{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    if (pickerController !=nil)
    {
        pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        pickerController.delegate = self;
        
        pickerController.allowsEditing = true;
        
        [self presentModalViewController:pickerController animated:true];
    }
}

- (IBAction)onVid:(id)sender
{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    if (pickerController !=nil)
    {
        pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        pickerController.delegate = self;
        
        pickerController.allowsEditing = false;
        pickerController.videoQuality = UIImagePickerControllerQualityTypeMedium;
        
        pickerController.mediaTypes = [NSArray arrayWithObjects:(NSString*)kUTTypeMovie, nil];
        
        [self presentModalViewController:pickerController animated:true];
    }
}


//selected image
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *selectedImage = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    if (selectedImage != nil) {
        photoImageView.image = selectedImage;
        save.hidden=false;
        cancel.hidden=false;
        click.hidden=TRUE;
        capture.hidden=TRUE;
        
    }

    NSURL *urlString = [info valueForKey:UIImagePickerControllerMediaURL];
    if (urlString != nil)
    {
        NSString * videoPath = [urlString path];
        myVidPath = videoPath;
        
        save.hidden=false;
        cancel.hidden=false;
        click.hidden=TRUE;
        capture.hidden=TRUE;
    }
    [picker dismissModalViewControllerAnimated:true];
    
}

- (IBAction)onSave:(id)sender
{
    UIImageWriteToSavedPhotosAlbum(photoImageView.image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    
    if (myVidPath != nil){
        UISaveVideoAtPathToSavedPhotosAlbum(myVidPath, self, @selector(video:didFinishSavingWithError:contextInfo:), nil);
    }
    save.hidden=TRUE;
    cancel.hidden=TRUE;
    click.hidden=FALSE;
    capture.hidden=FALSE;
    
    
}
- (IBAction)onCancel:(id)sender
{
    photoImageView.image = nil;
    save.hidden=TRUE;
    cancel.hidden=TRUE;
    click.hidden=FALSE;
    capture.hidden=FALSE;
}

-(void)image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo
{
    if (error != nil)
    {
        NSLog(@"%@", [error description]);
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:[NSString stringWithFormat:@"error %@", [error description]]
                                                       delegate:nil cancelButtonTitle:@"dismiss" otherButtonTitles:nil, nil];
        [alert show];
    }
    else
    {
        //************SAVE ALERT VIEW **************
        NSLog(@"save was successful");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Saved"
                                                        message:[NSString stringWithFormat:@"Your image was saved"]
                                                       delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}

//***********CANCEL****************
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissModalViewControllerAnimated:true];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    save.hidden=TRUE;
    cancel.hidden=TRUE;
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



@end
