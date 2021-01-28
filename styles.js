import { makeStyles } from '@material-ui/core/styles';

const drawerWidth = 240;
export default makeStyles((theme) => ({
  root: {
    display: 'flex',
  },
  appBar: {
    zIndex: theme.zIndex.drawer + 1,
    transition: theme.transitions.create(['width', 'margin'], {
      easing: theme.transitions.easing.sharp,
      duration: theme.transitions.duration.leavingScreen,
    }),
  },
  appBarShift: {
    marginLeft: drawerWidth,
    width: `calc(100% - ${drawerWidth}px)`,
    transition: theme.transitions.create(['width', 'margin'], {
      easing: theme.transitions.easing.sharp,
      duration: theme.transitions.duration.enteringScreen,
    }),
  },
  menuButton: {
    marginRight: 36,
  },
  hide: {
    display: 'none',
  },
  drawer: {
    width: drawerWidth,
    flexShrink: 0,
    whiteSpace: 'nowrap',
  },
  drawerOpen: {
    width: drawerWidth,
    transition: theme.transitions.create('width', {
      easing: theme.transitions.easing.sharp,
      duration: theme.transitions.duration.enteringScreen,
    }),
  },
  drawerClose: {
    transition: theme.transitions.create('width', {
      easing: theme.transitions.easing.sharp,
      duration: theme.transitions.duration.leavingScreen,
    }),
    overflowX: 'hidden',
    width: theme.spacing(7) + 1,
    [theme.breakpoints.up('sm')]: {
      width: theme.spacing(9) + 1,
    },
  },
  toolbar: {
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'flex-end',
    padding: theme.spacing(0, 1),
    // necessary for content to be below app bar
    ...theme.mixins.toolbar,
    // ...theme.mixins.denseToolbar
  },
  content: {
    flexGrow: 1,
    padding: theme.spacing(2),
  },
  active: {
    backgroundColor: "#b3b3b3"
  },
  mr6: {
    marginRight: '6px'
  },
  maxWidth100: {
    maxWidth: '100%'
  },
  media: {
    height: 0,
    paddingTop: '56.25%', // 16:9
  },
  ml6: {
    marginLeft: '6px'
  },
  ml12: {
    marginLeft: '12px'
  },
  mr12: {
    marginRight: '12px'
  },
  paper: {
    position: 'absolute',
    width: 600,
    backgroundColor: theme.palette.background.paper,
    border: '2px solid #000',
    boxShadow: theme.shadows[5],
    padding: theme.spacing(2, 4, 3),
    overflow: 'break-word'
  },
  appBarBottom: {
    top: 'auto',
    bottom: 0,
  },
  h100: {
    height: '100%',
    overflow: 'scroll'
  },
  br4Top: {
    borderRadius: '4px 4px 0px 0px'
  },
  br4Bottom: {
    borderRadius: '4px 4px 0px 0px'
  },
  denseToolbarOffset: {
    minHeight: '48px'
  }
}));